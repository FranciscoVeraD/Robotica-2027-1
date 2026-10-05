echo "Ejecutando Bash"

# Ir a la carpeta de usuario
cd "$HOME" || exit 1

# Verificar si Practica1 existe
if [ -d "Practica1" ]; then
    echo "Practica1 ya existe en $HOME. No se modifica ni se elimina."
    echo "Renombrala o muevela y vuelve a ejecutar el script."
    exit 1
fi

# Crea carpeta Integrantes y Letras
mkdir -p Practica1/Letras Practica1/Integrantes
touch Practica1/Integrantes/FragosoIslasManuelAlfredo.txt
touch Practica1/Letras/a.txt Practica1/Letras/b.txt Practica1/Letras/c.txt
touch Practica1/Integrantes/ManzanoCasadoLuisDavid.txt
touch Practica1/Integrantes/SalinasSanchezMarcela.txt
touch Practica1/Integrantes/VeraDiazFrancisco.txt


# Ejecuta el tree
echo ""
echo "Estructura de Practica1:"
if command -v tree > /dev/null; then
    tree Practica1
else
    find Practica1 | sort
fi

# Elimina 
echo ""
echo "Eliminando Practica1..."
rm -r "$HOME/Practica1"
echo "Listo."


