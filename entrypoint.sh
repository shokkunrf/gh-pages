#!/bin/sh

bundle exec jekyll serve \
    --force_polling \
    --watch \
    --host 0.0.0.0 \
    --trace \
    --config /app/_config.yml \
    --source /repo/${DOCS}
