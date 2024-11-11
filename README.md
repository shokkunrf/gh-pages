# gh-pages

Docker environment for reproducing gh-pages

## Usage

.env

- `NOJEKYLL`: Set `true` if the mounted directory includes files that are ignored by jekyll (eg: `_app`)
- `REPOSITORY`: Set the directory to mount in the container
- `DOCS`: Set the directory of the page you want to display on GitHub Pages

```sh
docker compose up -d
```
