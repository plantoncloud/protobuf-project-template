v ?= local

.PHONY: build
build:	
	rm -rf generated zzgo/todo zzjava/src/main/java/com/todo
	mkdir -p generated zzjava/src/main/java
	buf generate --include-imports
	cp -R generated/java/. zzjava/src/main/java/
	cp -R generated/go/{{cookiecutter.go_module}}/zzgo/. zzgo/

.PHONY: deploy
deploy:
	buf push --tag ${v}
	pushd zzjava;rm -rf build;./gradlew publish -Prevision=${v};popd

.PHONY: deploy-local
deploy-local:
	pushd zzjava;rm -rf build;./gradlew publishToMavenLocal -Prevision=${v};popd

update:
	buf mod update
