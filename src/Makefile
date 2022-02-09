all: clear fetch-stories
	raco pollen render stories
	raco pollen render blog
	raco pollen render -s
	mkdir ../tmp
	raco pollen publish . ../tmp
	cp -R ../tmp/* ..
	rm -rf ../tmp
	cp -R verbatim/* ..
	make clean
	ln ~/Important/thesis.tar.xz ../thesis.tar.xz

clean:
	raco pollen reset
	find `pwd` -type f | sort > total
	raco pollen render -ds 2>&1 | cut -d" " -f 2 | sort > source-files
	raco pollen reset
	comm -23 total source-files | grep -v verbatim | grep -v "pollen.rkt" | grep -v "Makefile" | xargs -I qq -- rm -rf "qq"
	rm -rf source-files || true

clear:
	ls .. | grep -v src | xargs -I qq -- rm -rf "../qq"

fetch-stories:
	rm -rf stories; mkdir stories
	cp ~/persistant/writing/Stories/finishedish/*.md stories
	cd stories; find . -type f | cut -d'/' -f 2 | cut -d'.' -f 1 | xargs -I qq -- sh -c 'pandoc qq.md -o qq.html.pm -t html; sed -i "1s/^/#lang pollen\n/" qq.html.pm'
	cd stories; rm *.md
