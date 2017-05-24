.PHONY: test

setup:
	go get github.com/smartystreets/goconvey/convey
	go get github.com/Masterminds/glide
	go get github.com/pierrre/gotestcover

test:
	go test `glide novendor`

cover:
	gotestcover -coverprofile=cover.out `glide novendor`

