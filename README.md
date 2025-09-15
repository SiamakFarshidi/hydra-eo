# HYDRA‑EO

<p align="center">

![HYDRA‑EO logo](assets/HyDRA-EO_logo.png){alt="HYDRA‑EO logo"}

</p>

Hybrid Machine Learning for **Multi‑Stressor Crop Disease and Pest Detection** using **hyperspectral + thermal** sensing, **radiative transfer models (RTMs)**, and **multi‑scale Earth Observation (EO)** (UAV → airborne → satellite).

This repository hosts the open materials of the ESA HYDRA‑EO concept: code, data schemas, docs, and the scientific roadmap.

------------------------------------------------------------------------

## 🗂 Repository structure

```         
HYDRA‑EO/
├─ assets/                # images, figures (place logo.png here)
├─ info/                  # call text, proposal PDFs, partner info
├─ apps/                  # Shiny apps
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

``` bash
conda env create -f environment.yml
conda activate hydra-eo
pip install -r scripts/python/requirements.txt
```

**R (renv)**

``` r
source("scripts/R/renv_init.R")  # installs renv, snapshots packages
```

**GitLab templates & CI** - Issue templates: `.gitlab/issue_templates/{Bug.md, Feature.md}` - MR template: `.gitlab/merge_request_templates/Standard.md` - CI: `.gitlab-ci.yml` with basic Python/R lint stages and docs placeholder.

## 📑 Review & Templates

-   **Pull request review**: see `PULL_REVIEW.md` for scientific content checklist (RTM–ML, datasets, reproducibility).\
-   **GitLab issue templates**: Bug, Feature, Dataset under `.gitlab/issue_templates/`.\
-   **Merge request template**: `.gitlab/merge_request_templates/Standard.md`.

## 🌱 Radiative Transfer Modeling in HYDRA-EO

The HYDRA-EO project builds upon two in-house R packages developed and maintained by the team, which form the backbone of the synthetic simulations used in this repository:

### 🔹 [ToolsRTM](https://gitlab.com/caminoccg/toolsrtm)

ToolsRTM is a comprehensive R package for structural radiative transfer modeling at canopy level. It supports PROSAIL and other 1D RTM simulations, enables the generation of look-up tables (LUTs), and allows band resampling to different sensors such as Sentinel-2, PRISMA, EnMAP, and CHIME.

The package also includes utilities for computing vegetation indices, BRF, and sensitivity analyses, along with Shiny applications for interactive trait–reflectance exploration.

### 🔹 [SCOPEinR](https://gitlab.com/caminoccg/scopeinr)

SCOPEinR is an R implementation of the SCOPE model for functional radiative transfer modeling. It simulates photosynthesis, sun-induced fluorescence (SIF), gross primary production (GPP), canopy temperature, and transpiration.

SCOPEinR links physiological traits with reflectance and flux measurements and integrates meteorological drivers from flux towers. It also provides Shiny applications for interactive exploration of functional traits and outputs.

------------------------------------------------------------------------

Together, **ToolsRTM + SCOPEinR** allow HYDRA-EO to generate **synthetic datasets** that couple **structural (reflectance)** and **functional (photosynthesis, SIF)** signals, providing a robust foundation for algorithm validation, stress detection, and multi-sensor data integration in the ESA monitoring framework.

### Manuals

The manuals are accessible through the [Shiny app](https://carlos-camino.shinyapps.io/0-toolsrtm-simulator/) or directly within the [ToolsRTM](https://carlos-camino.shinyapps.io/0-toolsrtm-simulator/_w_ef4421a7/Notebooks/R/ToolsRTM/ToolsRTM.html) and [SCOPEinR](https://carlos-camino.shinyapps.io/0-toolsrtm-simulator/_w_ef4421a7/Notebooks/R/SCOPEinR/SCOPEinR.html) packages. Vignettes are currently under development.

### Citation

If you use **ToolsRTM** packages, please cite the following references:

Camino et al., (2024). RT-Simulator: An Online Platform to Simulate Canopy Reflectance from Biochemical and Structural Plant Properties Using Radiative Transfer Models, *IGARSS 2024 - 2024 IEEE International Geoscience and Remote Sensing Symposium*, Athens, Greece, 2024, pp. 2811-2814, [doi: 10.1109/IGARSS53475.2024.10642442](https://ieeexplore.ieee.org/document/10642442).

Arano et al., (2024). Enhancing Chlorophyll Content Estimation With Sentinel-2 Imagery: A Fusion of Deep Learning and Biophysical Models, *IGARSS 2024 - 2024 IEEE International Geoscience and Remote Sensing Symposium*, Athens, Greece, 2024, pp. 4486-4489, [doi: 10.1109/IGARSS53475.2024.10641613](https://ieeexplore.ieee.org/document/10641613).

Camino et al., (in prep). Integrating physiological plant traits with Sentinel-2 imagery for monitoring gross primary production and detecting forest disturbances.
