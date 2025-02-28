#!/bin/bash

# Directories to back up
directories=("docs" "images" "videos")

# Backup destination
backup_dir="backups"

# Minimum free space required (in MB) - Simulated
min_space=500

# Retry failed backups up to 3 times
max_retries=3

# Create directories if they don't exist
echo "📂 Ensuring backup source directories exist..."
for dir in "${directories[@]}"; do
  mkdir -p "$dir"
  touch "$dir/sample_file.txt"  # Add a sample file to simulate content
done

echo "📁 Ensuring backup destination exists..."
mkdir -p "$backup_dir"

# Loop through directories
for dir in "${directories[@]}"; do
  retry=0

  # Simulate disk space (randomly set to low or high)
  free_space=$(( RANDOM % 1000 )) # Generates a value between 0 and 999
  echo "📦 Available disk space: $free_space MB"

  # Retry loop
  until [ $retry -ge $max_retries ]; do
    # Check disk space
    if [ $free_space -lt $min_space ]; then
      echo "❌ Insufficient disk space ($free_space MB < $min_space MB). Aborting."
      exit 1
    fi

    # Simulate backup success/failure (50% chance of failure)
    backup_success=$(( RANDOM % 2 ))

    # Generate backup filename
    timestamp=$(date +%Y%m%d-%H%M%S)
    backup_file="$backup_dir/backup_${timestamp}_${dir}.tar.gz"

    if [ $backup_success -eq 0 ]; then
      # Create an actual tar backup
      tar -czf "$backup_file" "$dir"

      echo "✅ Backup successful: $backup_file"
      break
    else
      echo "⚠️  Backup failed (attempt $((retry+1))/$max_retries)"
      ((retry++))
      sleep 2
    fi
  done

  if [ $retry -eq $max_retries ]; then
    echo "❌ Critical: Backup failed after $max_retries attempts."
  fi
done
