OUT_DIR = "/home/a1r/git/atw/atw_diags/outputs/"
rule run_notebook:
    input:
        "diagnostics/atw_atmos_ts_monthly_sfc_ocean_updated.ipynb"
    output:
        f"{OUT_DIR}/diagnostics/atw_atmos_ts_monthly_sfc_ocean_executed.ipynb",
        f"{OUT_DIR}/t_surf_final_replica.png"
    shell:
        """
        conda run -n spear-analysis papermill -k spear-analysis {input} {output[0]}
        """