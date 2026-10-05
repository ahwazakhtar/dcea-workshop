# Distributional Cost-Effectiveness Analysis: Hands-On Workshop

**DSxHE × Cancer Research UK Tutorial Series**
**Presenter:** Ahwaz Akhtar, PhD, Health Economist, George Washington University

[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/ahwazakhtar/dcea-workshop/blob/main/dcea_workshop_exercise.ipynb)

Distributional cost-effectiveness analysis (DCEA) asks not only *how much* health a programme produces for its cost, but *whose* health improves and who bears the costs. This repository holds the hands-on exercise for the workshop: an R notebook that runs in Google Colab with nothing to install.

**The question.** Jack lives in the most deprived fifth of England and can expect about 63 years in full health; Jill, in the least deprived fifth, about 75. Bowel cancer screening uptake is lowest in areas like Jack's. Should the NHS send a cheap reminder letter to *everyone* invited, or a stronger letter only to the most deprived areas? You'll answer it with real public data.

## Getting started

1. Click **Open in Colab** above and sign in to a Google account.
2. Choose **File → Save a copy in Drive** and work in your copy. The shared notebook can't save your edits.
3. The notebook opens in Colab's **R** runtime. If it doesn't, use **Runtime → Change runtime type → R**.
4. Run the set-up cell, then work through the five sections. Each **Your turn** cell shows the target result and has a self-check. If you skip one, the cells after it still run.

No CEA background is needed. In the workshop we go through the notebook together as a code-along. A solutions notebook will be added here after the session.

## What's here

| Path | Contents |
|---|---|
| `dcea_workshop_exercise.ipynb` | The code-along notebook (R; base R only) |
| `R/dcea_helpers.R` | Worked versions of the TODO functions, loaded by the notebook's set-up cell so later sections run even if a TODO is unfinished. Try the TODOs before reading it! |
| `figures/` | Target-result images shown in the notebook |
| `data/` | Local copies of the public datasets the notebook uses, with sources, licences and known issues (see [`data/README.md`](data/README.md)) |

Slides and the session recording will be posted after the workshop.

## Background reading (optional, ~30 minutes)

**New to cost-effectiveness analysis**
- Phillips C, Thompson G (2009). *What is a QALY?* "What is…?" series, Hayward Medical Communications.
- York Health Economics Consortium glossary, <https://yhec.co.uk/resources/glossary/>. Read *QALY*, *ICER*, *net health benefit* and *opportunity cost*.

**From cost-effectiveness to equity**
- Cookson R, Mirelman AJ, Griffin S, et al. (2017). Using cost-effectiveness analysis to address health equity concerns. *Value in Health* 20(2):206–212. [Open access](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5340318/)

**The case study**
- Asaria M, Griffin S, Cookson R (2016). Distributional cost-effectiveness analysis: a tutorial. *Medical Decision Making* 36(1):8–19. [Open access](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4853814/)

**Going deeper**
- Drummond MF, Sculpher MJ, Claxton K, Stoddart GL, Torrance GW (2015). *Methods for the Economic Evaluation of Health Care Programmes*, 4th ed. Oxford University Press.
- Cookson R, Griffin S, Norheim OF, Culyer AJ (eds.) (2020). *Distributional Cost-Effectiveness Analysis: Quantifying Health Equity Impacts and Trade-Offs.* Oxford University Press. Spreadsheet exercises: <https://www.york.ac.uk/che/equity/handbook/>
- Love-Koh J, Cookson R, Gutacker N, Patton T, Griffin S (2019). Aggregate distributional cost-effectiveness analysis of health technologies. *Value in Health* 22(5):518–526.
- York Health Equity Impact Calculator: <https://shiny.york.ac.uk/dceasimple/>

## Data and acknowledgements

- **York Health Equity Impact Calculator data** © University of York, MIT licence ([`data/york_LICENSE.md`](data/york_LICENSE.md)). Love-Koh J, Schneider P, Cookson R (2022). *York health equity impact calculator.* University of York. <https://shiny.york.ac.uk/dceasimple>. Source: <https://github.com/bitowaqr/dcea>
- **Health Inequality Project data**, CC0. Chetty R, Stepner M, Abraham S, et al. (2016). The association between income and life expectancy in the United States, 2001–2014. *JAMA* 315(16):1750–1766. <https://healthinequality.org/data/>
- Screening uptake, costs and effects, and the fairness-adjustment data are taken from Asaria, Griffin & Cookson (2016).

## Licence

The workshop materials in this repository are released under the [MIT Licence](LICENSE) © 2026 Ahwaz Akhtar. The third-party datasets in `data/` keep their own licences: the York data under its MIT licence (© University of York) and the Health Inequality Project data under CC0.
