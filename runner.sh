#!/bin/bash

java miniJava.Compiler "$1.java"
java mJAM.Disassembler "$1.mJAM"
java mJAM.Interpreter "$1.mJAM"
java "$1.java"
