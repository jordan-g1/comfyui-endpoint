FROM runpod/stable-diffusion:comfy-ui-latest

# Copy workflow and handler
COPY workflow.json /comfyui/workflow.json
COPY handler.py /comfyui/handler.py

# Set working directory
WORKDIR /comfyui

# Make sure the script is executable
RUN chmod +x handler.py

# Start ComfyUI with our handler
CMD ["python", "handler.py"]
