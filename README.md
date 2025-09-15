# HYDRA‑EO

<p align="center">
  <img src="assets/logo.png" alt="HYDRA‑EO logo" width="380"/>
</p>

Hybrid Machine Learning for **Multi‑Stressor Crop Disease and Pest Detection** using **hyperspectral + thermal** sensing, **radiative transfer models (RTMs)**, and **multi‑scale Earth Observation (EO)** (UAV → airborne → satellite).

This repository hosts the open materials of the ESA HYDRA‑EO concept: code, data schemas, docs, and the scientific roadmap.

---

## 🗂 Repository structure

```
HYDRA‑EO/
├─ assets/                # images, figures (place logo.png here)
├─ info/                  # call text, proposal PDFs, partner info
├─ scripts/               # reusable code (R / Python)
│  ├─ R/
│  └─ python/
├─ notebooks/             # exploration, tutorials, reports
├─ data/                  # (empty) pointers & README on data policy
│  ├─ raw/                # raw acquisitions (not tracked)
│  ├─ interim/            # intermediate products
│  └─ processed/          # final products / examples
├─ docs/                  # methods, specs, templates
└─ routemap/              # milestones, deliverables, KPIs
```

> **Note:** Large files are not tracked. See `.gitignore` and `data/README.md` for the data policy.


## 🧰 Environments & CI

**Python (conda)**
```bash
conda env create -f environment.yml
conda activate hydra-eo
pip install -r scripts/python/requirements.txt
```

**R (renv)**
```r
source("scripts/R/renv_init.R")  # installs renv, snapshots packages
```

**GitLab templates & CI**
- Issue templates: `.gitlab/issue_templates/{Bug.md, Feature.md}`
- MR template: `.gitlab/merge_request_templates/Standard.md`
- CI: `.gitlab-ci.yml` with basic Python/R lint stages and docs placeholder.


## 📑 Review & Templates

- **Pull request review**: see `PULL_REVIEW.md` for scientific content checklist (RTM–ML, datasets, reproducibility).  
- **GitLab issue templates**: Bug, Feature, Dataset under `.gitlab/issue_templates/`.  
- **Merge request template**: `.gitlab/merge_request_templates/Standard.md`.  
