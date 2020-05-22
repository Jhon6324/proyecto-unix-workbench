clear
numreal=$(ls | wc -l)
echo "Adivina el número de archivos que hay en el directorio actual"
echo "Ingresa un número: "
function evaluacion {
	while [[ $numero -ne $numreal ]]
	do
		read numero
		if [[ $numero =~ ^[0-9]+$ ]]
		then
			if [[ $numero -lt $numreal ]]
			then
				echo "Su estimación es demasiasdo baja"
			elif [[ $numero -gt $numreal ]]
			then

				echo "Su estimación es demasiado alta"
			else
				echo "Felicitaciones, has adivinado el número correcto"

			fi
		else
			echo "Por favor ingrese un número entero: "
		fi
	done
}
evaluacion
