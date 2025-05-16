#!/bin/bash

OUTPUT_FILE="training_outputs_ours.txt"
START_SEED=42
NUM_RUNS=1

# Loop 10 times
for i in $(seq $START_SEED $((START_SEED + NUM_RUNS - 1))); do
  # Use the loop variable as the seed
  seed=$i

  # Run the training script and append the output to the file
  echo "Running train_ours with seed: $seed"
  python 1_JointFusion_train_ours.py --seed "$seed" >> "$OUTPUT_FILE" 2>&1
done

# Wait for all background processes to finish
wait

echo "All training runs completed. Outputs stored in: $OUTPUT_FILE"