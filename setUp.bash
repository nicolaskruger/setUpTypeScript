#!/bin/bash
npm init -y

npm install -D typescript@3.3.3
npm install -D tslint@5.12.1

npm install -S express@4.16.4
npm install -D @types/express@4.16.1

cat ./setUp/tsconfig.json > ./tsconfig.json

tsc --init

./node_modules/.bin/tslint --init

cat ./setUp/tslint.json > ./tslint.json

cat ./setUp/package.json > ./package.json


rm -r ./setUp
rm -r ./.git
rm README.md
rm setUp.bash