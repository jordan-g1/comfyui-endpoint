FROM runpod/stable-diffusion:comfy-ui-latest

WORKDIR /

# Install additional requirements
RUN pip install runpod requests Pillow

# Copy our files
COPY workflow.json /workspace/workflow.json
COPY handler.py /workspace/handler.py

# Make handler executable and set workdir
WORKDIR /workspace
RUN chmod +x handler.py

# Add some debug logging
RUN echo "Files in workspace:" && ls -la /workspace

# Start handler
CMD ["python", "handler.py"]
