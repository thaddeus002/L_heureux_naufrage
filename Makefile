

%.html: %.md
	Markdown.pl $^ > $@

