.PHONY: build lint test

IVERILOG ?= iverilog
VVP ?= vvp
BUILD_DIR := build
SIM := $(BUILD_DIR)/gcd

build:
	@mkdir -p $(BUILD_DIR)
	$(IVERILOG) -g2012 -Wall -s gcd_tb -o $(SIM) GCD/gcd.v GCD/gcd_tb.v

lint: build
	@echo "Icarus warning check completed for the verified GCD example."

test: build
	$(VVP) $(SIM)
