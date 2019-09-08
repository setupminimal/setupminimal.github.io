
all:
	raco pollen reset
	cp ~/Important/Stories/finishedish/*.md stories
	cd stories; rm *html* || true
	cd stories; find . | grep ".md" | cut -d'/' -f 2 | cut -d'.' -f 1 | xargs -I qq -- pandoc qq.md -o qq.html
	cd stories; find . | grep ".html" | xargs -I qq -- mv qq qq.pm
	cd stories; find . | grep ".html.pm" | xargs -I qq -- sed -i '1s/^/#lang pollen\n/' qq
	cd stories; raco pollen render
	cd blog; rm -rf *.html* || true
	cd blog; rm *.adoc || true
	cd blog; raco pollen render
	cd blog; find . | grep "adoc\$$" | cut -d'/' -f 2 | xargs -I qq -- bash -x -c "asciidoctor --safe -e qq -o qq.html.pp"
	cd blog; find . | grep "adoc.html.pp" | grep -v compiled | sed 's/adoc.html.pp//' | xargs -I qq -- mv qqadoc.html.pp qqhtml.pm
	cd blog; find . | grep -v compiled/ | grep "html.pm" | cut -d'/' -f 2 | xargs -I qq -- sed -i '1s/^/#lang pollen\n/' qq
	cd blog; raco pollen render
	raco pollen render
