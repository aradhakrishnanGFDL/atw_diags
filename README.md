# Pythonized SPEAR model diagnostic tool for Ferret-based scripts

## Overview
This repository contains Python-based diagnostic tools for SPEAR variables. Currently, this script contains pythonized Sea Surface Temperature (SST / `t_surf`) bias diagnostic tool that compares SPEAR-Hi outputs against observational OISST datasets. The pythonized scripts are based on Ferret scripts from Andrew Wittenberg (NOAA-federal).

## Key Mathematical Features

* **Bilinear/Conservative Regridding:** Uses `xESMF` bilinear/conservative interpolation to map the SPEAR ocean pixels onto the 1°x1° OISST grid without triggering off-planet boundary crashes (-90.5/90.5).
* **Diagnostic Stats:** Generates basic statistics for model comparison with observation.

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
