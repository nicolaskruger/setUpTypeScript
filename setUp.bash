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

mkdir src

touch src/app.ts

npm install systemjs@0.19.31 --save

cat ./setUp/index.htm > ./index.htm

cat ./setUp/.gitignore > .gitignore 

rm -r ./setUp
rm -r ./.git
rm README.md
rm setUp.bash