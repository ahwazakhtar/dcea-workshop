# Worked versions of the notebook's TODO functions.
#
# The workshop notebook loads this file in its set-up cell, so every section runs even if you
# haven't finished an earlier TODO. Try each TODO yourself before reading this file!
# The full solutions notebook is shared after the session.

# Section 2 (framework step 1b): net health effect by IMD group, vs standard screening
net_health_by_imd_solution <- function(strategy, inputs = get("inputs", envir = globalenv()),
                                       params = PARAMS, hoc_scenario = "flat") {
  s <- STRATEGIES[[strategy]]
  reached <- inputs$imd %in% s$imd_reached
  extra_completers <- inputs$invitees * s$uplift * reached
  need_mod <- inputs$need_share / mean(inputs$need_share)
  colo_mod <- inputs$colonoscopy_uptake / mean(inputs$colonoscopy_uptake)
  hs <- hoc_dist[hoc_dist$scenario == hoc_scenario, ]
  hoc_share <- hs$hoc_prop[order(hs$imd)]

  qalys <- extra_completers * params$qaly_per_extra_completer * need_mod * colo_mod
  total_cost <- sum(s$cost_per_letter * inputs$invitees * reached) +
                sum(extra_completers) * params$cost_per_extra_completer
  hoc <- hoc_share * total_cost / params$threshold

  data.frame(imd = inputs$imd, extra_completers = extra_completers,
             qalys = qalys, hoc = hoc, net_qalys = qalys - hoc)
}

# Section 3 (step 1c): population-weighted regression for the fairness adjustment
fit_fairness_model <- function(data) {
  lm(qale_targeted ~ male * imd + is_low, data = data, weights = population_pct)
}

# Section 4 (step 2a): population-weighted Gini coefficient
gini_solution <- function(h, p) {
  w <- p / sum(p)
  sum(outer(w, w) * abs(outer(h, h, "-"))) / (2 * sum(w * h))
}

# Section 5 (step 2c): equally distributed equivalent health
atkinson_ede_solution <- function(h, p, epsilon) {
  p <- p / sum(p)
  if (abs(epsilon - 1) < 1e-9) return(exp(sum(p * log(h))))
  sum(p * h^(1 - epsilon))^(1 / (1 - epsilon))
}

kolm_ede_solution <- function(h, p, alpha) {
  p <- p / sum(p)
  -log(sum(p * exp(-alpha * h))) / alpha
}
