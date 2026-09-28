# Workshop data

Copies of the public datasets used in `dcea_workshop_exercise.ipynb`. The notebook reads them from a local `data/` folder if one sits next to it; on Colab it reads them from this repository, and falls back to the original sources below.

## York Health Equity Impact Calculator (base data)

- **Source:** https://github.com/bitowaqr/dcea, `data/` folder, pinned to commit `ddb3ea29c11ba2041cea2f2dc6856899c37b5282` (22 Oct 2023)
- **Licence:** MIT (`york_LICENSE.md`), © University of York. The authors ask to be acknowledged: Love-Koh J, Schneider P, Cookson R (2022). *York health equity impact calculator.* University of York. https://shiny.york.ac.uk/dceasimple
- **Files** (renamed with a `york_` prefix, contents unchanged):

| File | Contents |
|---|---|
| `york_qale_pop_imd.csv` | Quality-adjusted life expectancy at birth and population by IMD quintile, England (IMD1 = **most** deprived) |
| `york_icd_imd.csv` | Hospital episodes by ICD-10 3-character code × age band × IMD quintile |
| `york_hoc_distribution.csv` | Share of health opportunity costs by IMD quintile under `flat`, `moderate` and `steep` scenarios |

**Known issues (found while building the exercise):**
- In `york_icd_imd.csv`, the IMD4 column is identical to IMD3 in 100% of ICD × age rows, which looks like a copy error in the source. The notebook shows this to participants as a data-checking step.
- About 33% of episode cells equal 5, consistent with small-number suppression.
- The source repo doesn't document where `qale_pop_imd.csv` comes from; its values look like Love-Koh et al. (2015) *Value in Health* (Health Survey for England 2010–12), but that isn't confirmed.

## Health Inequality Project (extension)

- **Source:** https://healthinequality.org/data/, Online Table 1 (`health_ineq_online_table_1.csv`), with its readme
- **Licence:** CC0 (public domain). Please cite Chetty R, Stepner M, Abraham S, et al. (2016). The association between income and life expectancy in the United States, 2001–2014. *JAMA* 315(16):1750–1766.
- **Contents:** Life expectancy at age 40 by sex × household income percentile (national, pooled 2001–2014). `count` = number of observations; `le_agg` = unadjusted life expectancy; `le_raceadj` = race-adjusted.
- **Note:** the server rejects requests without a browser user-agent; the notebook sends one.

## Asaria, Griffin & Cookson (2016)

Uptake by deprivation (Table 2), reminder costs and effects (Table 3), and the 20-subgroup QALE data (Table 5) are typed into the notebook directly from the paper in `Reference Materials/`.
