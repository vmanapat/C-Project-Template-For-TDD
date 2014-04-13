#include "PrintHelloWorld.h"
#include "unity.h"

void setUp(void) {
}

void tearDown(void) {
}


void test_HelloWorldFunction(void) {

    TEST_ASSERT_EQUAL_STRING("Hello World\n", printhelloworld());

    TEST_IGNORE_MESSAGE("This Test Was Ignored On Purpose");

}
