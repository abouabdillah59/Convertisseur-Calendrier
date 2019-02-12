#!/bin/bash

read -p 'Entrez le type de calendrier que vous voulez convertir:' type
echo  "Calendrier(Hegirien ou Gregorien): $type"

if [ $type = "Hegirien" -o  $type = "hegirien" -o $type = "hégirien" ] 
then
         read -p "Entrez l'année Hegirienne:" anh 
         echo "Année Gregorienne :" $(($anh + 622 - $anh*11/365))
else [ $type = "Gregorien" -o $type = "gregorien" -o $type = "grégorien" ] 
         read -p "Entrez l'année gregorienne:" ang
     if (("$ang"  < "622"))
     then 
           echo "L'année hegirienne commence en 622"
     else 
         echo "Année Hegirienne:" $(($ang - 622 + ($ang - 622) * 11/355))
     fi
fi

read -p "Voulez vous entrer une autre date?"  encor
if [ $encor = "oui" ]
then 
     ./heggreg.sh
else 
    echo "salam"
fi




