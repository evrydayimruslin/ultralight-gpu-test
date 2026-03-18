# Ultralight GPU Test Worker

Minimal RunPod serverless worker for testing the Ultralight GPU pipeline.

## What's inside

- `harness.py` — Platform harness that wraps developer functions with structured error handling, timing, and VRAM measurement
- `main.py` — Test functions (hello, add, slow, compute, fail, echo)
- `Dockerfile` — Python 3.11 + RunPod SDK + harness + test functions

## Test functions

| Function | Args | Purpose |
|----------|------|---------|
| `hello` | `name="World"` | Basic function dispatch |
| `add` | `a=0, b=0` | Kwargs passing |
| `slow` | `duration_ms=1000` | Timing/billing verification |
| `compute` | `n=1000000` | CPU-bound compute timing |
| `fail` | none | Error handling / exit_code classification |
| `echo` | `**kwargs` | Arbitrary kwargs passthrough |

## Deployment

Connected to RunPod via GitHub integration. RunPod builds the Docker image automatically.
