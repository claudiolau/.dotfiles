.PHONY: help install setup uninstall

help:
	@echo "Available commands:"
	@echo "  make install      - Run the ./scripts/install.sh script"
	@echo "  make setup        - Run the ./scripts/set-up.sh script"
	@echo "  make uninstall    - Run the ./scripts/uninstall.sh script"

install:
	@./scripts/install.sh

setup:
	@./scripts/set-up.sh

uninstall:
	@./scripts/uninstall.sh

