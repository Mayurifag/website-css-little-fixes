.PHONY: ci lint-css lint-md lint-yaml lint-editorconfig spellcheck

ci: lint-editorconfig lint-md lint-yaml spellcheck lint-css

lint-css:
	npx stylelint '**/*.css'

lint-md:
	markdownlint-cli2 '**/*.md'

lint-yaml:
	yamllint .

lint-editorconfig:
	editorconfig-checker

spellcheck:
	codespell
