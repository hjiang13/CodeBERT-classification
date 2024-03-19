python run.py \
    --output_dir=./saved_models \
    --tokenizer_name=neulab/codebert-cpp \
    --model_name_or_path=neulab/codebert-cpp \
    --do_train \
    --train_data_file=../dataset/train.jsonl \
    --eval_data_file=../dataset/valid.jsonl \
    --test_data_file=../dataset/test.jsonl \
    --num_train_epochs 5 \
    --block_size 256 \
    --train_batch_size 8 \
    --eval_batch_size 16 \
    --learning_rate 2e-5 \
    --max_grad_norm 1.0 \
    --seed 123456  2>&1 | tee train.log