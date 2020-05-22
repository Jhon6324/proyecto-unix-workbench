numreal=$(ls | wc -l)

function entrada {
	read -p "Adivina el número de archivos que hay en el directorio actual: " numero
}

function evaluacion {
	while [[ numero -ne numreal ]]
	do
		entrada
		if [[ numero -lt numreal ]]
		then
			echo "Su estimación es demasiado baja"
		elif [[ numero -gt numreal ]]
		then
			echo "Su estimación es demasiado alta"
		fi
	done

	if [[ numero -eq numreal ]]
	then
		echo "Felicitaciones. Has adivinado, el número de archivos que hay en el directorio actual es igual a $numero"
	fi
}

evaluacion


