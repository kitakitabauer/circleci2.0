#!/bin/bash
set -eu

COMMIT=$(git rev-parse --verify HEAD)
BUILDDATE=$(date '+%Y/%m/%d %H:%M:%S %Z')
GOVERSION=$(go version)
REPO_PATH=github.com/kitakitabauer/circleci2.0
LDFLAG="-X ${REPO_PATH}/api.commit=${COMMIT} -X \"${REPO_PATH}/api.buildDate=${BUILDDATE}\" -X \"${REPO_PATH}/api.goVersion=${GOVERSION}\""

go build -ldflags "${LDFLAG}"

