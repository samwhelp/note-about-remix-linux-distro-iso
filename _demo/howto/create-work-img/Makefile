
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make create'
	@echo
	@echo '	$$ make mount'
	@echo
	@echo '	$$ make unmount'
	@echo
.PHONY: help




prepare:
	@./prepare.sh
.PHONY: prepare




create:
	@./create.sh
.PHONY: create


mount:
	@./mount.sh
.PHONY: mount


unmount:
	@./unmount.sh
.PHONY: unmount




clean:
	rm -rf ./tmp
.PHONY: clean
