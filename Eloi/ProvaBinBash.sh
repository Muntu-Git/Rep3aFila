#! /bin/bash

output_file="sortida.txt"
parametre=""

while [ -z $parametre ]; do                     # -z vol dir q si parametre no té cap valor...
   echo "Has d'introduir almenys un paràmetre"
   read parametre                               # Input usuari
done

while [ $parametre != "acabar" ]; do            # Si parametre és diferent a acabar
   echo "El parametre s'ha guardat correctament "
   echo "Per sortir escriu *acabar*"
   read parametre                               # Input de l'usuari 
   if [ $parametre != "acabar" ]; then          # Si parametre és diferent 
      echo $parametre >> $output_file           # Escribim parametre en l'arxiu de output_file
                                                # Important!!!:
                                                # *>* sobreescriu i *>>* escriu a la següent linia
   fi
done

echo "Tot guardat correctament bro"
