all: README.md

README.md: guesssinggame.sh
	echo "# Adivina el número de archivos" > README.md
	echo "## Fué ejecutado en" `date` >> README.md
	echo "Este script contiene"   `wc -l guesssinggame.sh` "lineas de código" >> README.md

