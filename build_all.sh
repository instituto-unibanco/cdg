#!/bin/bash

for f in src/*.yml; do
poetry run mkdocs build -f $f
done