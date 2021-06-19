export CUDA_VISIBLE_DEVICES=0
export IMG_HEIGHT=137
export IMG_WIDTH=236
export EPOCHS=50
export TRAIN_BATCH_SIZE=256
export TEST_BATCH_SIZE=8
export MODEL_MEAN="(0.485, 0.456, 0.406)"
export MODEL_STD="(0.229, 0.224, 0.225)"
export BASE_MODEL="resnet34"
export TRAINING_FOLDS_CSV="inputs/train_folds.csv"

export TRAIN_FOLDS="(0,1,2,3)"
export VALID_FOLDS="(4,)"
python src/train.py

export TRAIN_FOLDS="(0,1,2,4)"
export VALID_FOLDS="(3,)"
python src/train.py

export TRAIN_FOLDS="(0,1,4,3)"
export VALID_FOLDS="(2,)"
python src/train.py

export TRAIN_FOLDS="(0,4,2,3)"
export VALID_FOLDS="(1,)"
python src/train.py

export TRAIN_FOLDS="(4,1,2,3)"
export VALID_FOLDS="(0,)"
python src/train.py