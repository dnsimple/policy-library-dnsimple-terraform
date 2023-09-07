.PHONY: test
test:
	sentinel test -verbose $(shell find . -name "$(name)" -type f ! -path "*/testdata/*")

.PHONY: tests
tests:
	sentinel test -verbose $(shell find . -name "*.sentinel" -type f ! -path "*/testdata/*" ! -path "*/modules/*" ! -path "*/example/*")

.PHONY: format
format:
	sentinel fmt -write=true $(shell find . -name "*.sentinel" -type f)
