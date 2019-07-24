#!/bin/sh
sh "sed -i 's/$BUILD_NUMBER/buildnumber/g'"	>> pom.xml
