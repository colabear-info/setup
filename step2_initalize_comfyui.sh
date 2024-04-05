#!/local/bin
export PATH=~/anaconda3/bin:$PATH

conda init zsh
git clone https://github.com/comfyanonymous/ComfyUI.git
cd ComfyUI

conda create -n comfyui python=3.10
conda activate comfyui
pip install torch torchvision torchaudio 
pip install -r requirements.txt 
