#!/bin/bash

#Create slate from Swagger

widdershins --search false --expand-body true --httpsnippet true --language_tabs 'shell:Curl' 'nodejs:NodeJS' --summary swagger.json -o pascalate.md

mv pascalate.md source/index.html.md

#build
#docker run --rm --name slate -v $(pwd)/build:/srv/slate/build -v $(pwd)/source:/srv/slate/source slatedocs/slate

#serve
#docker run --rm --name slate -p 4567:4567 -v $(pwd)/source:/srv/slate/source slatedocs/slate serve

#doesnt work
#docker run --rm --name slate -p 4567:4567 -v $(pwd)/source/index.html.md:/srv/slate/source/index.html.md -v $(pwd)/source/includes:/srv/slate/source/includes 
