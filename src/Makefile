all: stories blogs verbatim root

root:
	raco pollen render root
	raco pollen publish root ..

clean:
	ls .. | grep -v src | xargs -I qq -- rm -rf "qq"

verbatim: root
	cp -R verbatim/* ..

blogs: root
	raco pollen render blog
	raco pollen publish blog ../blog

stories: root
	rm -rf stories; mkdir stories
	cp ~/Important/Stories/finishedish/*.md stories
	cd stories; find . -type f | cut -d'/' -f 2 | cut -d'.' -f 1 | xargs -I qq -- sh -c 'pandoc qq.md -o qq.html.pm -t html; sed -i "1s/^/#lang pollen\n/" qq.html.pm'
	raco pollen render stories
	raco pollen publish stories ../stories
