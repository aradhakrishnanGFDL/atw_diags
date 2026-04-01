rule all:
    input:
        "outputs/sst_bias.png"

rule sst_bias:
    input:
        model="data/spear.nc",
        obs="data/oisst.nc"
    output:
        "outputs/sst_bias.png"
    shell:
        """
        python scripts/sst_bias.py \
            --model {input.model} \
            --obs {input.obs} \
            --output {output}
        """
