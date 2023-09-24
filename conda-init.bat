
@REM clean index cache
conda clean -i


conda create -n sd-web python=3.10 -y

@REM essentials
@REM conda install -n sd-web pytorch=2.0.0=py3.10_cuda11.8_cudnn8_0 torchvision=0.15.0=py310_cu118 pytorch-cuda=11.8 -y
conda install -n sd-web pytorch=2.0.0=py3.10_cuda11.8_cudnn8_0 torchvision=0.15.0=py310_cu118 -y

conda activate sd-web

pip install torch=2.0.1+cu118 torchvision=0.15.2+cu118
pip install gfpgan

@REM optionals
conda install -n sd-web xformers==0.0.17 -y

@REM [+] xformers version 0.0.17 installed.
@REM [+] torch version 2.0.1+cu118 installed.
@REM [+] torchvision version 0.15.2+cu118 installed.
@REM [+] accelerate version 0.18.0 installed.
@REM [+] diffusers version 0.14.0 installed.
@REM [+] transformers version 4.26.1 installed.
@REM [+] bitsandbytes version 0.35.4 installed.

@REM conda run -n sd-web --no-capture-output call webui-user.bat
