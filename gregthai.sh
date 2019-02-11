read -p "Choisissez le calendrier que vous voulez convertir : " type
echo  "Calendrier(Thailandais ou Gregorien): $type"

if [ $type = "thailandais" -o $type = "Thailandais" ]
then
       read -p "Entrez l'année thailandaise:" ant   
         echo "Année Gregorienne:" $(($ant-545)) 
else [ $type = "Gregorien" -o $type = "Grégorien" -o $type = "grégorien" -o $type = "gregorien" ]
       read -p "Entrez l'année gregorienne:" ang
	echo "Année Thailandaise:" $(($ang+545))
fi
