BIBFILES = action-recognition.bib augmentation.bib dataset-image.bib dataset-video.bib detection.bib federated-learning.bib generation.bib image-classification.bib image-segmentation.bib lab-paper.bib language.bib misc.bib optimizer.bib survey-paper.bib transformer.bib

all: $(BIBFILES)
	cat *.bib crossref/*.bib > build/all.bib
