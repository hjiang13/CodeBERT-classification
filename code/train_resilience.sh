python run.py \
    --output_dir=./saved_models \
    --tokenizer_name=neulab/codebert-cpp \
    --model_name_or_path=neulab/codebert-cpp \
    --do_train \
    --train_data_file=../dataset/train_resilience.jsonl \
    --eval_data_file=../dataset/valid_resilience.jsonl \
    --test_data_file=../dataset/test_resilience.jsonl \
    --num_train_epochs 20 \
    --block_size 256 \
    --train_batch_size 4 \
    --eval_batch_size 4 \
    --learning_rate 2e-5 \
    --max_grad_norm 1.0 \
    --seed 123456  2>&1 | tee train.log
