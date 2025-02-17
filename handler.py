import runpod

def handler(event):
    return {
        "status": "success",
        "output": "Handler is running"
    }

runpod.serverless.start({"handler": handler})
