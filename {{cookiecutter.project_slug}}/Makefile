version ?= local

.PHONY: build
build:	
	rm -rf generated zzgo/todo zzjava/src/main/java/com/todo
	mkdir -p generated zzjava/src/main/java
	buf generate --include-imports
	cp -R generated/java/. zzjava/src/main/java/
	cp -R generated/kotlin/. zzjava/src/main/kotlin/
	cp -R generated/go/{{cookiecutter.go_module}}/zzgo/. zzgo/

.PHONY: deploy
deploy:
	buf push --tag ${version}
	pushd zzjava;rm -rf build;./gradlew publish -Prevision=${version};popd

.PHONY: deploy-local
deploy-local:
	pushd zzjava;rm -rf build;./gradlew publishToMavenLocal -Prevision=${version};popd

.PHONY: update
update:
	buf mod update

.PHONY: release
release:
	buf push --tag ${version}
