
regenerate:
	pandoc dynamic/resume.md -o resume.html -c css/typesetter.css -s
	pandoc dynamic/index.md -o index.html -c css/typesetter.css -s
