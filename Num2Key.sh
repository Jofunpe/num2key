#!/bin/bash

# Colores

blackcolour="\e[30m"
redcolour="\e[31m"
greencolour="\e[32m"
endcolour="\e[0m"
yellowcolour="\e[33m"
bluecolour="\e[34m"
pinkcolour="\e[35m"
ciancolour="\e[36m"
whitecolour="\033[1;37m"
graycolour="\e[90m"
purplecolour="\e[1;35m"

# ctrl+c

function ctrl_c(){
echo -e "\n\n${redcolour}[!]${endcolour} ${yellowcolour}Saliendo...${endcolour}\n\n"
tput cnorm && exit 1
}
trap ctrl_c INT

# Variables globales 

declare -i parameter_counter=0
declare -i bucle=0
declare -a num

# Funciones

function Help(){
    echo -e "\n${redcolour}[+]${endcolour}${greencolour} Opciones del script: ${endcolour}\n"
    echo -e "\t${redcolour}[-h]${endcolour}${greencolour} Usa esta opción para ver el menú de ayuda${endcolour}"
    echo -e "\t${redcolour}[-w]${endcolour}${greencolour} Usa esta opción para escribir la tecla numérica${endcolour}"
    echo -e "\t${redcolour}[-p]${endcolour}${greencolour} Usa esta opción para escribir todos los números de una en la misma ejecución del script${endcolour}"
    echo -e "\t${redcolour}[  ]${endcolour}${greencolour} También puedes escribir el valor que quieras convertir a numero sin necesidad de poner opciones${endcolour}\n"
    echo -e "${redcolour}[+]${endcolour}${greencolour} Este script lo desarrollé ya que a mi antiguo PC no le van las teclas numéricas, y era un rollo tener que buscar los números en Google para poder escribir algo con estos. Y ya que lo creo pense en subirlo a github${endcolour}"
    echo -e "\n${redcolour}[+]${endcolour}${greencolour} El script es case-insensitive. Da igual si escribes en mayúsculas o en minúsculas${endcolour}"
    echo -e "\n${redcolour}[+]${endcolour}${greencolour} Script hecho por Jofunpe. Más info en https://jofunpe.com${endcolour}"
    echo -e "\n${redcolour}[+]${endcolour}${greencolour} Caracteres que el script convierte a número/símbolo: ${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Uno -> 1${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Dos -> 2${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Tres -> 3${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Cuatro -> 4${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Cinco -> 5${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Seis -> 6${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Siete -> 7${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Ocho -> 8${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Nueve -> 9${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Arroba -> @${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Parentesis -> ()${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Almohadilla -> #${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Dollar -> $ ${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Porcentaje -> %${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Y -> &${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Barras -> /\\\\${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Comillas -> \"${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Exclamaciones -> !${endcolour}"
    echo -e "\n\t${redcolour}[/]${endcolour}${greencolour} Igual -> =${endcolour}"

}

function Word(){
    echo -en "\n${redcolour}[+]${endcolour}${greencolour} Escribe el numero que quieras -> ${endcolour}" && read number
    number=$(echo "$number" | tr '[:upper:]' '[:lower:]')
    while [ "$bucle" -eq 0 ]; do
        if [ "$number" == "uno" ]; then
            clear
            echo -e "\n\t${greencolour}1 1 1${endcolour}\n"
            bucle=1
        elif [ "$number" == "dos" ]; then
            clear
            echo -e "\n\t${greencolour}2 2 2${endcolour}\n"
            bucle=1
        elif [ "$number" == "tres" ]; then
            clear
            echo -e "\n\t${greencolour}3 3 3${endcolour}\n"
            bucle=1
        elif [ "$number" == "cuatro" ]; then
            clear
            echo -e "\n\t${greencolour}4 4 4${endcolour}\n"
            bucle=1
        elif [ "$number" == "cinco" ]; then
            clear
            echo -e "\n\t${greencolour}5 5 5${endcolour}\n"
            bucle=1
        elif [ "$number" == "seis" ]; then
            clear
            echo -e "\n\t${greencolour}6 6 6${endcolour}\n"
            bucle=1
        elif [ "$number" == "siete" ]; then
            clear
            echo -e "\n\t${greencolour}7 7 7${endcolour}\n"
            bucle=1
        elif [ "$number" == "ocho" ]; then
            clear
            echo -e "\n\t${greencolour}8 8 8${endcolour}\n"
            bucle=1
        elif [ "$number" == "nueve" ]; then
            clear
            echo -e "\n\t${greencolour}9 9 9${endcolour}\n"
            bucle=1
        elif [ "$number" == "cero" ]; then
            clear
            echo -e "\n\t${greencolour}0 0 0${endcolour}\n"
            bucle=1
        elif [ "$number" == "tuberia" ]; then
            clear
            echo -e "\n\t${greencolour}| | |${endcolour}\n"
            bucle=1
        elif [ "$number" == "arroba" ]; then
            clear
            echo -e "\n\t${greencolour}@ @ @${endcolour}\n"
            bucle=1
        elif [ "$number" == "parentesis" ]; then
            clear
            echo -e "\n\t${greencolour}() () ()${endcolour}\n"
            bucle=1
        elif [ "$number" == "almohadilla" ] || [ "$number" == "almuadilla" ] || [ "$number" == "hastad" ]; then
            clear
            echo -e "\n\t${greencolour}# # #${endcolour}\n"
            bucle=1
        elif [ "$number" == "dolar" ] || [ "$number" == "dollar" ]; then
            clear
            echo -e "\n\t${greencolour}$ $ $ ${endcolour}\n"
            bucle=1
        elif [ "$number" == "porcentaje" ] || [ "$number" == "porciento" ]; then
            clear
            echo -e "\n\t${greencolour}% % %${endcolour}\n"
            bucle=1
        elif [ "$number" == "y" ] || [ "$number" == "i" ]; then
            clear
            echo -e "\n\t${greencolour}& & &${endcolour}\n"
            bucle=1
        elif [ "$number" == "barra" ] || [ "$number" == "barras" ]; then
            clear
            echo -e "\n\t${greencolour}/// /// /// \\\\\\\\\ \\\\\\\\\ \\\\\\\\\\ ${endcolour}\n"
            bucle=1
        elif [ "$number" == "comillas" ]; then
            clear
            echo -e "\n\t${greencolour}\"\"\" \"\"\" \"\"\" ${endcolour}\n"
            bucle=1
        elif [ "$number" == "exclamacion" ] || [ "$number" == "exclamaciones" ]; then
            clear
            echo -e "\n\t${greencolour}!!! !!! ¡¡¡ ¡¡¡${endcolour}\n"
            bucle=1
        elif [ "$number" == "igual" ]; then
            clear
            echo -e "\n\t${greencolour}=== === === ${endcolour}\n"
            bucle=1
        else
            clear
            echo -en "\n${redcolour}[!]${endcolour}${greencolour} Ha habido un error, vuelva a intentarlo -> ${endcolour}" && read number
            number=$(echo "$number" | tr '[:upper:]' '[:lower:]')
        fi
    done
}
function PalabraPorPalabra(){
    echo -en "\n${redcolour}[+]${endcolour}${greencolour} Escribe los números seguidos que quieras copiar -> ${endcolour}" && read -a num
    num=$(echo "$num" | tr '[:upper:]' '[:lower:]')
    num=($(echo "${num[@]}" | tr '[:upper:]' '[:lower:]'))
#    echo "$num"
#    echo "${#num[@]}"
    echo ""
    while [ "${#num[@]}" -ne 0 ]; do
        if [ "${num[0]}" == "uno" ]; then
            echo -en "${greencolour}1${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "dos" ]; then
            echo -en "${greencolour}2${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "tres" ]; then
            echo -en "${greencolour}3${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "cuatro" ]; then
            echo -en "${greencolour}4${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "cinco" ]; then
            echo -en "${greencolour}5${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "seis" ]; then
            echo -en "${greencolour}6${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "siete" ]; then
            echo -en "${greencolour}7${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "ocho" ]; then
            echo -en "${greencolour}9${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "nueve" ]; then
            echo -en "${greencolour}9${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "arroba" ]; then
            echo -en "${greencolour}@${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "parentesis" ]; then
            echo -en "${greencolour}()${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "hastad" ] || [ "${num[0]}" == "almuadilla" ] || [ "${num[0]}" == "almohadilla" ]; then
            echo -en "${greencolour}#${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "dolar" ] || [ "${num[0]}" == "dollar" ]; then
            echo -en "${greencolour}\$${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "porcentaje" ] || [ "${num[0]}" == "porciento" ]; then
            echo -en "${greencolour}%${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "y" ] || [ "${num[0]}" == "i" ]; then
            echo -en "${greencolour}&${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "barra" ] || [ "${num[0]}" == "barras" ]; then
            echo -en "${greencolour}/\\\\${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "comillas" ]; then
            echo -en "${greencolour}\"${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "exclamacion" ] || [ "${num[0]}" == "exclamaciones" ]; then
            echo -en "${greencolour}!${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "igual" ]; then
            echo -en "${greencolour}=${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "cero" ]; then
            echo -en "${greencolour}0${endcolour}"
            num=("${num[@]:1}")
        elif [ "${num[0]}" == "tuberia" ]; then
            echo -en "${greencolour}|${endcolour}"
            num=("${num[@]:1}")
        else
            num=("${num[@]:1}")
        fi
    done
    echo -e "\n"
}

# Script

re=$(echo "$1" | tr '[:upper:]' '[:lower:]')
if [ "$re" == "uno" ]; then
    echo -e "\n${greencolour}1 1 1${endcolour}\n"
    exit
fi
if [ "$re" == "dos" ]; then
    echo -e "\n${greencolour}2 2 2${endcolour}\n"
    exit
fi
if [ "$re" == "tres" ]; then
    echo -e "\n${greencolour}3 3 3${endcolour}\n"
    exit
fi
if [ "$re" == "cuatro" ]; then
    echo -e "\n${greencolour}4 4 4${endcolour}\n"
    exit
fi
if [ "$re" == "cinco" ]; then
    echo -e "\n${greencolour}5 5 5${endcolour}\n"
    exit
fi
if [ "$re" == "seis" ]; then
    echo -e "\n${greencolour}6 6 6${endcolour}\n"
    exit
fi
if [ "$re" == "siete" ]; then
    echo -e "\n${greencolour}7 7 7${endcolour}\n"
    exit
fi
if [ "$re" == "ocho" ]; then
    echo -e "\n${greencolour}8 8 8${endcolour}\n"
    exit
fi
if [ "$re" == "nueve" ]; then
    echo -e "\n${greencolour}9 9 9${endcolour}\n"
    exit
fi
if [ "$re" == "arroba" ]; then
    echo -e "\n${greencolour}@ @ @${endcolour}\n"
    exit
fi
if [ "$re" == "hastad" ] || [ "$re" == "almuadilla" ] || [ "$re" == "almohadilla" ]; then
    echo -e "\n${greencolour}# # #${endcolour}\n"
    exit
fi
if [ "$re" == "dolar" ] || [ "$re" == "dollar" ]; then
    echo -e "\n${greencolour}$ $ $ ${endcolour}\n"
    exit
fi
if [ "$re" == "i" ] || [ "$re" == "y" ]; then
    echo -e "\n${greencolour}& & &${endcolour}\n"
    exit
fi
if [ "$re" == "barra" ] || [ "$re" == "barras" ]; then
    echo -e "\n${greencolour}/// /// /// \\\\\\\\\ \\\\\\\\\ \\\\\\\\\\ ${endcolour}\n"
    exit
fi
if [ "$re" == "comillas" ]; then
    echo -e "\n${greencolour}\"\"\" \"\"\" \"\"\" ${endcolour}\n"
    exit
fi
if [ "$re" == "exclamacion" ] || [ "$re" == "exclamaciones" ]; then
    echo -e "\n${greencolour}!!! !!! ¡¡¡ ¡¡¡ ${endcolour}\n"
    exit
fi
if [ "$re" == "igual" ]; then
    echo -e "\n${greencolour}=== === ===${endcolour}\n"
    exit
fi
if [ "$re" == "cero" ]; then
    echo -e "\n${greencolour}0 0 0${endcolour}\n"
    exit
fi
if [ "$re" == "tuberia" ]; then
    echo -e "\n${greencolour}| | |${endcolour}\n"
    exit
fi
if [ "$re" == "porcentaje" ] || [  "$re" == "porciento" ]; then
    echo -e "\n${greencolour}% % %${endcolour}\n"
    exit
elif [ "$re" == "-w" ] || [ "$re" == "-h" ] || [ "$re" == "-p" ]; then 
    :
elif [ "$re" == "" ]; then 
    Help
else
    echo -e "\n${redcolour}[!]${endcolour}${greencolour} Error${endcolour}\n"
fi

# Menu 

while getopts "hwp" arg; do
    case $arg in 
    h) let parameter_counter+=1;;
    w) let parameter_counter+=2;;
    p) let parameter_counter+=3;;
    *) : ;;
    esac
done
if [ "$parameter_counter" -eq 1 ]; then 
    Help
elif [ "$parameter_counter" -eq 2 ]; then 
    Word
elif [ "$parameter_counter" -eq 3 ]; then
    PalabraPorPalabra
else
    :
fi