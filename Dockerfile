FROM runpod/stable-diffusion:comfy-ui-latest

WORKDIR /comfyui-workspace

RUN pip install runpod

COPY . .

CMD python handler.py
