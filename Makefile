
all:
	raco pollen render
	cd blog; rm *.html.*
	cd blog; raco pollen render
	cd blog; ls *.adoc | xargs -I qq -- bash -c "asciidoctor -e qq -o $(echo qq | cut -d'.' -f 1).html.pp"
	cd blo; ls *.html | xargs -I qq -- sed -i '1s/^/#lang pollen /' qq
	cd blog; raco pollen render
