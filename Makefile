all: test
precommit: gofmt-staged

gofmt-staged:
	./gofmt-staged.sh

testdata:
	git clone https://github.com/spetr/go-face-testdata.git testdata

test: testdata
	go test -v
