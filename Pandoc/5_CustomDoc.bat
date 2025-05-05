bin\pandoc docs\1_JigsBasics.md br.md docs\2_EntityJig.md br.md docs\3_DrawJig.md -o output.html --standalone --embed-resources --css=bin\pandoc.css --toc
@REM bin\wkhtmltopdf output.html output.pdf
@REM del output.html