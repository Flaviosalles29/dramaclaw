#!/usr/bin/env bash
# Sobe API (8780) e interface (8080). Uso: ./start.sh
cd "$(dirname "$0")"
export ST_EDITION=ce
.venv/bin/novelvideo api --host 0.0.0.0 --port 8780 &
(cd frontend && pnpm dev --host 0.0.0.0 --port 8080) &
wait
