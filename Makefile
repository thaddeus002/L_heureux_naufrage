

WORKING_DIR=OEBPS
CONTENT=$(WORKING_DIR)/preface.html

$(WORKING_DIR)/%.html: %.md
	Markdown.pl $^ > $@

epub: $(CONTENT)
	zip -0Xq  my-book.epub mimetype
	zip -Xr9Dq my-book.epub META-INF OEBPS

clean:
	rm -f $(CONTENT)
