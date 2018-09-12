
# epub filename
EPUB=l_heureux_naufrage.epub

WORKING_DIR=OEBPS
CONTENT=$(WORKING_DIR)/preface.html $(WORKING_DIR)/personnages.html $(WORKING_DIR)/acte_I.html $(WORKING_DIR)/acte_II.html $(WORKING_DIR)/acte_III.html

$(WORKING_DIR)/%.html: %.md
	Markdown.pl $^ > $@

epub: $(CONTENT)
	zip -0Xq $(EPUB) mimetype
	zip -Xr9Dq $(EPUB) META-INF $(WORKING_DIR)

clean:
	rm -f $(CONTENT)
