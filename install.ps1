echo "-----------Installing GIMP-ML-----------"

conda create -y -n gimpenv python=3
conda activate gimpenv
conda install -y pytorch torchvision cudatoolkit numpy matplotlib-base -c pytorch
pip install -r requirements.txt
python -c "import sys; print(f'python3_executable = r\'{sys.executable}\'')" | out-file -encoding utf8 plugins/_config.py
conda deactivate

echo "-----------Installed GIMP-ML------------"
