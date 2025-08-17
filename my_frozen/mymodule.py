"""Minimal example module frozen into MicroPython firmware."""

def hello(name: str = "world") -> str:
	return f"Hello, {name}!"

VERSION = "0.1.0"
