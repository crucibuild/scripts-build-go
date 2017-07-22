default: check

.PHONY: check ci

check:
	shellcheck $(shell find $(CURDIR)/script -iname "*.sh")

ci: check
