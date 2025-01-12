#!/bin/bash

spelling_checker_local_route="/home/josemlp/workspace/test_spanish_spelling"

if  [ -z "$1" ] && [ -z "$2" ]; then
  echo "Especifique ruta del archivo a revisar ortografia y idioma (spanish | english)";
  else
    if [[ $2  = "english" ]];
      then
          aspell --master=english  -c $1;
    else
          aspell --master=spanish  -c $1;
  fi
  
  # Actualizamos repositorio con diccionarios.
  cp  /home/$USER/.aspell.es.pws  ./
  cp  /home/$USER/.aspell.en.pws  ./

  cd $spelling_checker_local_route
  git init
  git add .
  git commit -m "Actualizamos diccionario personal."
  git push origin master
fi
