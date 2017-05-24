package main

import (
	"testing"
	. "github.com/smartystreets/goconvey/convey"
)

func TestExec(t *testing.T) {
	t.Parallel()

	Convey("When executing method", t, func() {
		ret := exec()

		Convey("Then it returns string", func() {
			So(ret, ShouldEqual, "Test Exec")
		})
	})
}