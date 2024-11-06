#!/bin/sh

if "${NOJEKYLL}"; then
    ln -s /repo/${DOCS} ./_site

    bundle exec jekyll serve \
        --skip-initial-build

    exit 0
fi

bundle exec jekyll serve \
    --force_polling \
    --source /repo/${DOCS}
