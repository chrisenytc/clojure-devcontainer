.PHONY: build
build:
	@.github/actions/smoke-test/build.sh $(template)

.PHONY: test
test:
	@@.github/actions/smoke-test/test.sh $(template)
