# If bash command fails, build should error out
set -e

# Install specific package versions with pip
# Check the latest version using https://pypi.org/search

pip3 install pandas==0.24.1
# pip3 install matplotlib==2.2.2
# pip3 install scikit-learn==0.19.2
pip3 install numpy==1.15.0
# pip3 install seaborn==0.9.0
# pip3 install bokeh==0.13.0
pip3 install line_profiler==2.1.2
pip3 install memory_profiler==0.55.0
# pip3 install scipy==1.1.0

# Include datasets in the image

# DATADIR=/usr/local/share/datasets
# mkdir -p $DATADIR
# wget -O $DATADIR/iris.csv http://s3.amazonaws.com/assets.datacamp.com/staging/course_2406/datasets/iris.csv

cat <<EOT >> $PYTHONSTARTUP
import pandas as pd
pd.set_option('display.max_columns', 10)
pd.set_option('display.width', 200)
EOT
