SITE_DIR=docs/.vitepress/dist
GH_PAGES_DIR=../gh-pages

serve:
	npm run docs:dev

build:
	npm run docs:build

deploy: build
	git worktree add -B gh-pages $(GH_PAGES_DIR) origin/gh-pages || git worktree add -B gh-pages $(GH_PAGES_DIR)
	rm -rf $(GH_PAGES_DIR)/*
	cp -r $(SITE_DIR)/* $(GH_PAGES_DIR)/
	echo "gitdocs-lab.github.io" > $(GH_PAGES_DIR)/CNAME
	cd $(GH_PAGES_DIR) && git add . && git commit -m "Deploy to GitHub Pages" && git push origin gh-pages
	git worktree remove $(GH_PAGES_DIR)
