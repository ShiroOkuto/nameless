#!/bin/sh

exec gunicorn mediaflow_proxy.main:app \
    -k uvicorn.workers.UvicornWorker \
    --bind 0.0.0.0:${PORT:-7860} \
    --workers ${WORKERS:-2} \
    --timeout ${TIMEOUT:-120}
