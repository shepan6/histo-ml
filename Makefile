dev:
	docker build . --target develop -t histo-ml \
	 && docker run -ti --rm \
	 -v ${PWD}/build/src:/src \
	 -v ${PWD}/tests:/tests \
	 histo-ml sh