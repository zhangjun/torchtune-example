# setup
tune cp eleuther_evaluation custom_eleuther_evaluation.yaml
tune run eleuther_eval --config my_eleuther_evaluation.yaml

# example
You can then use the following command to run fine-tuning with QAT using the above config. This workload requires at least 6 GPUs, each with VRAM of at least 80GB. By default, this uses the int8 dynamic per token activations + int4 grouped per channel weights quantization configuration as shown above:

```shell
tune run --nnodes 1 --nproc_per_node 6 qat_distributed --config custom_8B_qat_full.yaml
```

# link
https://sebastianraschka.com/blog/2023/llm-mixed-precision-copy.html
https://pytorch.org/torchtune/main/tutorials/qat_finetune.html
https://pytorch.org/torchtune/main/tutorials/chat.html

# note
tune run eleuther_eval --config ./custom_eval_config.yaml