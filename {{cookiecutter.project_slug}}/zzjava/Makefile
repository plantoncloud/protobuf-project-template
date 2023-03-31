version?=local
.PHONY: build
build:
	./gradlew build

.PHONY: test
test:
	./gradlew check

.PHONY: publish
publish:
	./gradlew publish -Prevision=${version}
