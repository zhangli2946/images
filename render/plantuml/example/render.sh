#!/bin/bash

cat $1 | docker run -i --rm --add-host raw.githubusercontent.com:199.232.28.133 github.com/zhangli2946/images/render/plantuml:$2-openjdk8 java -jar plantuml.jar -tsvg -encodeurl -p
