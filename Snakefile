rule run_notebook:
    output:
        config["output_file"],
        "diagnostics/atw_atmos_ts_monthly_sfc_ocean_executed.ipynb"
    conda: "envs/environment.yaml"   
    params:
        nb=config["notebook"],
        inp=config["input_file"],
        out=config["output_file"],
        var=config["variable"]
    shell:
        """
        papermill {params.nb} diagnostics/atw_atmos_ts_monthly_sfc_ocean.ipynb \
        -p input_file {params.inp} \
        -p output_file {params.out} \
        -p variable {params.var}
        """
