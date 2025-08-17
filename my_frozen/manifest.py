# Include board defaults when building an stm32 board build
try:
	include("$(BOARD_DIR)/manifest.py")
except Exception:
	# Allow use with ports that do not define BOARD_DIR (e.g. unix) during local dev
	pass

# Freeze single-file module in same directory as this manifest
module("mymodule.py")
