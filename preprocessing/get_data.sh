# Filename containing the CSV file of TCEs in the training set.
TCE_CSV_FILE="${HOME}/TCE_subset.csv"

# Directory to download Kepler light curves into.
KEPLER_DATA_DIR="${HOME}/kepler/"

# Generate a bash script that downloads the Kepler light curves in the training set.
python ./generate_download_script.py \
  --kepler_csv_file=${TCE_CSV_FILE} \
  --download_dir=${KEPLER_DATA_DIR}

# Run the download script to download Kepler light curves.
./get_kepler.sh