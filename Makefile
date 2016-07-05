all:

run:
	docker run --rm -ti clojure-vim

build:
	docker build --rm --tag clojure-vim .
