
read -p "Choisissez le calendrier que vous voulez convertir : " type
echo  "Calendrier(Thailandais ou Gregorien): $type"

if [ $type = "thailandais" -o $type = "Thailandais" ]
then
       read -p "Entrez l'année thailandaise:" ant   
         echo "Année Gregorienne:" $(($ant-543)) 
else [ $type = "Gregorien" -o $type = "Grégorien" -o $type = "grégorien" -o $type = "gregorien" ]
       read -p "Entrez l'année gregorienne:" ang
	echo "Année Thailandaise:" $(($ang+543))
fi

read -p "Voulez vous entrer une autre date?"  encor
if [ $encor = "oui" ]
then 
     ./gregthai.sh
else 
    echo "salam"
fi
