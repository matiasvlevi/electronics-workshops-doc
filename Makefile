# Define variables

CSS = pandoc.css
TEMPLATE = eisvogel
SOURCE_DIR = ./src
OUTPUT_DIR = ./docs
PDF_ENGINE = xelatex # Assuming you're using XeLaTeX, adjust as needed

OPTIONS= "fontsize=12pt"

# List of source md files
SOURCES = $(wildcard $(SOURCE_DIR)/*.md)

# Target PDF files
TARGETS = $(patsubst $(SOURCE_DIR)/%.md,$(OUTPUT_DIR)/%.pdf,$(SOURCES))

# Default rule
all: $(TARGETS)

# Rule for building PDFs
$(OUTPUT_DIR)/%.pdf: $(SOURCE_DIR)/%.md $(CSS)
	@mkdir -p $(OUTPUT_DIR)
	pandoc --to=pdf --pdf-engine=$(PDF_ENGINE) --css $(CSS) $< -o $@ --template $(TEMPLATE) --listings -V $(OPTIONS)

# Clean rule
clean:
	rm -f $(OUTPUT_DIR)/*.pdf

.PHONY: all clean