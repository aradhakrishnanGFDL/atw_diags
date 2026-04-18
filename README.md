# Pythonized SPEAR model diagnostic tool for Ferret-based scripts

## Overview
This repository contains Python-based diagnostic tools for SPEAR variables. 
The original code is in Ferret, written by Andrew Wittenberg. This is an example of pythonization of an example suite of analysis,
applying best practices from a user, high-resolution data and institutional workflow perspective.

---

## Structure

- `diagnostics` - Diagnostics source code and related materials
- `README.md` — documentation for diagnostics
- `requirements.txt` — environment dependencies for running diagnostics

---

## Diagnostics

Pythonized diagnostic suites for SPEAR data analysis and evaluation.


## atw_atmos_ts_monthly_sfc_ocean

Sea Surface Temperature ( `t_surf`) bias diagnostic tool comparing SPEAR-Hi outputs against observational OISST datasets.

These Python scripts are adapted from original Ferret-based diagnostics developed by Andrew Wittenberg, with enhancements for reproducibility and integration into modern workflows.

The name of the analysis script is self-descriptive: 

atw - lead_author initials
atmos - post-processing component for data
ts - time-series
monthly - frequency of data 
sfc_ocean = surface ocean field

Key Features

* **Bilinear/Conservative Regridding:** Uses `xESMF` bilinear/conservative interpolation to map the SPEAR ocean pixels onto the 1°x1° OISST grid.
* **Diagnostic Stats:** Generates basic statistics for model comparison with observation.
* 
---

## Notes

See development timeline.

## Dependencies
This script requires specific Python modules. You can install the requirements via `conda` or `pip`.

```bash
# Recommended Conda environment setup
conda create -n spear-analysis -c conda-forge xarray numpy matplotlib cartopy xesmf netcdf4
conda activate spear-analysis
```

## How to run
* Run the ferret_test_final.ipynb notebook.
* If you want to apply the "conservative" regridding, change the argument inside the xe.Regridder function from "bilinear" to "conservative".

## Development Timeline

**Phases**

1. Foundation  
2. Efficiency *(parallel)*  
3. Reproducible & Flexible Workflows *(parallel)*  
4. Validation *(continuous)*  
5. Portability
   
Efficiency and workflow development proceed in parallel; validation spans all phases.
User engagement throughout.
