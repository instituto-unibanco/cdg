#!/bin/bash

for f in src/*.yml; do
mkdocs build -f $f
done