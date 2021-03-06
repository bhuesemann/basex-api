@echo off
setlocal

REM Path to this script
set PWD=%~dp0

REM Paths to distributed files or source directories
set BASEX=%PWD%/../../basex/target/classes
set BASEXAPI=%PWD%/../target/classes

REM Classpath
set LIB=%PWD%/../lib
set CP=%BASEX%;%BASEXAPI%;%LIB%/jax-rx-1.3.1.jar;%LIB%/jetty-6.1.25.jar;%LIB%/jetty-util-6.1.25.jar;%LIB%/servlet-api-2.5-20081211.jar;%LIB%/jersey-server-1.4.jar;%LIB%/jersey-core-1.4.jar;%LIB%/asm-3.1.jar

REM Options for virtual machine
set VM=-Xmx512m

REM Run code
java -cp "%CP%;." %VM% org.basex.api.jaxrx.JaxRxServer %*
