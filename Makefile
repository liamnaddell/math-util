#GOPATH="/Users/$USER/projects/util-math/mtools-golang"
GOPATH := $(shell pwd)

all: go rust haskell


go:
		cd mtools-golang/src/mathparse/ ; go build

rust:
		cd mtools-rust/src/ ; cargo build

haskell:
		cd mtools-haskell/ ; cabal install -j
