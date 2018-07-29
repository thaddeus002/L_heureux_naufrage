

WORKING_DIR=OEBPS
CONTENT=$(WORKING_DIR)/preface.html $(WORKING_DIR)/intro.html $(WORKING_DIR)/acte_I.html $(WORKING_DIR)/acte_II.html $(WORKING_DIR)/acte_III.html

$(WORKING_DIR)/%.html: %.md
	Markdown.pl $^ > $@

epub: $(CONTENT)
	zip -0Xq  l_heureux_naufrage.epub mimetype
	zip -Xr9Dq l_heureux_naufrage.epub META-INF OEBPS

clean:
	rm -f $(CONTENT)
