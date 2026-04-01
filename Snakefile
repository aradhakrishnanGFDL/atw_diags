rule all:
    input:
        "outputs/noname.png"

rule sst_bias:
    input:
        model="data/tba.nc",
        obs="data/tba.nc"
    output:
        "outputs/t_surf_final_replica.png"
    shell:
        """
        python scripts/atw_atmos_ts_monthly_sfc_ocean.py \
            --model {input.model} \
            --obs {input.obs} \
            --output {output}
        """
