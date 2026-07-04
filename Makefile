CHARACTER ?=
URL ?=
INSTA ?=
ATTACK_DIR ?= attacks
TEMPLATE ?= templates/Template.clip

PROJECT_DIR := $(ATTACK_DIR)/$(CHARACTER)

.PHONY: create-attack help

create-attack:
	@if [ -z "$(CHARACTER)" ] || [ -z "$(INSTA)" ] || [ -z "$(URL)" ]; then \
		echo "Usage: make create-attack CHARACTER='untitled' INSTA='untitled' URL='https://artfight.net/character/ID'"; \
		exit 1; \
	fi
	@if [ ! -f "$(TEMPLATE)" ]; then \
		echo "Missing template: $(TEMPLATE)"; \
		exit 1; \
	fi
	@if [ -e "$(PROJECT_DIR)" ]; then \
		echo "Folder already exists: $(PROJECT_DIR)"; \
		exit 1; \
	fi
	@mkdir -p "$(PROJECT_DIR)"
	@cp "$(TEMPLATE)" "$(PROJECT_DIR)/$(CHARACTER).clip"
	@printf "%s\n%s\n" "$(URL)" "$(INSTA)" > "$(PROJECT_DIR)/notes.txt"
	@echo "Created $(PROJECT_DIR)"

help:
	@echo "make create-attack CHARACTER= INSTA= URL="
	

	
