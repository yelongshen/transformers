# Add parent directory to python path to access lightning_base.py
export PYTHONPATH="../":"${PYTHONPATH}"

#python finetune.py \
#--data_dir=$CNN_DIR \
#--learning_rate=3e-5 \
#--train_batch_size=$BS \
#--eval_batch_size=$BS \
#--output_dir=$OUTPUT_DIR \
#--max_source_length=512 \
#--max_target_length=56 \
#--val_check_interval=0.1 --n_val=200 \
#--do_train --do_predict \
# "$@"


python finetune.py \
--data_dir=/work/DPR/data/retriever/qas \
--model_name_or_path=t5-large \
--learning_rate=3e-5 \
--train_batch_size=1 \
--eval_batch_size=1 \
--output_dir=$OUTPUT_DIR \
--max_source_length=16 \
--max_target_length=10 \
--val_max_target_length=10 \
--test_max_target_length=10 \
--task_prefix="QA: " \
--num_workers=0 \
--do_train  $@