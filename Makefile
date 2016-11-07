all: html

html: index.html
index.html: stylesheet.css matthew_parker_cv.md
	pandoc --standalone -H stylesheet.css --from markdown --to html \
	-T "Matthew Parker CV" \
	-o index.html matthew_parker_cv.md

clean:
	rm index.html
