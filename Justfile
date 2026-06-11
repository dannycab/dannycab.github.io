# preview site locally with drafts
preview:
    hugo server -D

# build static output locally (optional check — Actions builds on push)
build:
    hugo --minify

# commit source changes and push to trigger GitHub Actions deploy
deploy message="update site":
    git add content/ layouts/ static/ assets/ archetypes/ themes/ config.yml .gitmodules .github/ .gitignore
    git diff --cached --quiet && echo "nothing to commit" || git commit -m "{{message}}"
    git push
