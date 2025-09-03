# Makefile - link dotfiles into place

PKGS	:= editorconfig zsh vim git

OFILE := emacs/dot-emacs.d/init.org
HFILE := docs/index.html
TARGET := emacs/.emacs.d/init.el

all: init html

.PHONY: list
list:	## list all dotfile links created here
	ls -al ~ | grep -E '^[l]'

.PHONY: dotlinks
dotlinks:
	# link PKGS dotfiles into home directory
	for p in $(PKGS) ; do \
		stow -vv $$p ; \
	done

.PHONY: dotunlink
dotunlink:
	for p in $(PKGS) ; do \
		stow -v -D $$p ; \
	done

.PHONY: html
html:	$(OFILE)
	cd emacs && \
		emacs init.org --batch -l ~/.dotfiles/emacs/htmlize.el -f org-html-export-to-html --kill
	mv emacs/index.html docs

.PHONY: init
init:	$(OFILE) 
	emacs $(OFILE) --batch -l org -f org-babel-tangle

run:
	emacs -Q -l emacs/.emacs.d/init.el

.PHONY: clean
clean:
	rm -f docs/index.html init.el modules/*.el
