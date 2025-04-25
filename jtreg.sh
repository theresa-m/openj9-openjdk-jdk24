#!/bin/bash

JTREGHOME="/Users/theresamammarella/jtreg"
EXTENSIONSBASEDIR=$(pwd)
TEST_JDK_HOME=$EXTENSIONSBASEDIR/build/macosx-aarch64-server-release/images/jdk
TEST_IMAGE=$EXTENSIONSBASEDIR/build/macosx-aarch64-server-release/images/test
OPENJ9_JAVA_OPTIONS="-Xdump:system+java:events=user+abort,request=exclusive+compact+prepwalk"

# run-test-prebuilt runs tests without recompiling the jdk
make run-test-prebuilt \
    TEST="java/util/concurrent/tck/JSR166TestCase.java" \
    JTREG_JAVA_OPTIONS="" \
    BOOT_JDK=$TEST_JDK_HOME \
    JT_HOME=$JTREGHOME \
    JDK_IMAGE_DIR=$TEST_JDK_HOME \
    TEST_IMAGE_DIR=$TEST_IMAGE
