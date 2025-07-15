#!/bin/bash

rm -rf site
mkdir -p site

for f in src/*.yml; do
  filename=$(basename "$f" .yml)
  suffix=${filename#mkdocs_}
  
  if [[ "$filename" == "mkdocs" ]]; then
    output_dir="site"
  else
    output_dir="site/$suffix"
  fi

  echo "Construindo $f em $output_dir"
  poetry run mkdocs build -f "$f" -d "$(pwd)/$output_dir"
done

echo "Estrutura final da pasta site/"
tree site
