rule run_notebook:
    input:
        "diagnostics/atw_atmos_ts_monthly_sfc_ocean_updated.ipynb"
    output:
        "diagnostics/atw_atmos_ts_monthly_sfc_ocean_executed.ipynb",
        "diagnostics/t_surf_final_replica.png"
    shell:
        """
        conda run -n spear-analysis papermill -k spear-analysis {input} {output[0]}
        """