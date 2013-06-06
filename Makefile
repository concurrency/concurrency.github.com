PORT = 9000
JEKYLLGTEQ1 = $(shell expr `jekyll --version | sed 's/^.* //g' | cut -f1 -d.` \>= 1)

ifeq "$(JEKYLLGTEQ1)" "1"
	FLAGS = serve -p $(PORT) --watch
else
	FLAGS = --server $(PORT) --auto
endif

test:
	jekyll $(FLAGS)
