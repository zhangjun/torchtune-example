tune run --nproc_per_node 1 full_finetune_distributed --config int8/config/llama31_qat_int8_config.yaml

# tune run lora_finetune_single_device --config llama3_1/8B_lora_single_device

# tune run lora_finetune_single_device \
# --config llama2/7B_lora_single_device \
# batch_size=8 \
# enable_activation_checkpointing=True \
# max_steps_per_epoch=128
