type docs\*.md > 0_input.md
bin\pandoc 0_input.md -o output.html --standalone --embed-resources --css=bin\pandoc.css
bin\wkhtmltopdf output.html output.pdf
del output.html