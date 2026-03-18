# Ultralight GPU Test Template — Phase 1
# Minimal container for testing the serverless pipeline.
# No GPU/CUDA required — just Python + RunPod SDK + harness + test functions.

FROM python:3.11-slim-bookworm

RUN pip install --no-cache-dir runpod

COPY harness.py /app/harness.py
COPY main.py /app/main.py

WORKDIR /app

CMD ["python", "-u", "/app/harness.py"]
