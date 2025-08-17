#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
MPY_DIR="$ROOT_DIR/third_party/micropython"
FROZEN_MANIFEST="$ROOT_DIR/my_frozen/manifest.py"

make -C "$MPY_DIR/mpy-cross"
make -C "$MPY_DIR/ports/stm32" BOARD=VCC_GND_F407VE FROZEN_MANIFEST="$FROZEN_MANIFEST" "$@"