rule sst_notebook:
    input:
        "data/input.nc"
    output:
        "results/output.nc",
        "diagnostics/atw_atmos_ts_monthly_sfc_ocean_executed.ipynb"
    params:
        notebook="diagnostics/atw_atmos_ts_monthly_sfc_ocean.ipynb"
    shell:
        """
        papermill {params.notebook} {output[1]} \
        -p input_file {input} \
        -p output_file {output[0]}
        """

