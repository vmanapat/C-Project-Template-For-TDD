CC=gcc
CFLAGS=-O -Wextra -Wno-unused-result -W -pedantic -ansi -std=c99

TEST_OUT1=TestSampleProgram
DIST_OUT=SampleProgram

RUNNER_SRC=test/TestSampleProgram.c

# Source files
TEST_SRC_FILES1=$(UNITY_ROOT)/src/unity.c\
		      $(RUNNER_SRC)\
			  src/PrintHelloWorld.c\
			  src/PrintHelloWorld.h\
			  test/no_ruby/TestSampleProgram_Runner.c
SRC_FILES= \
			  src/SampleProgram.c\
			  src/PrintHelloWorld.c \
			  src/PrintHelloWorld.h
INC_DIRS=-Isrc -I$(UNITY_ROOT)/src
UNITY_ROOT=lib/Unity

all: clean test

.PHONY: test
test:
	ruby lib/Unity/auto/generate_test_runner.rb $(RUNNER_SRC) test/no_ruby/TestSampleProgram_Runner.c
	$(CC) $(INC_DIRS) $(CFLAGS) $(TEST_SRC_FILES1) -o build/test/$(TEST_OUT1)
	-build/test/$(TEST_OUT1)

dist: 
	$(CC) $(INC_DIRS) $(CFLAGS) $(SRC_FILES) -o build/dist/$(DIST_OUT)

.PHONY: clean
clean:
	mkdir -p build/test
	mkdir -p build/dist
	rm -f build/test/*
	rm -f build/dist/* 
