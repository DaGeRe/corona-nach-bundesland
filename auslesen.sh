for land in Brandenburg Berlin "Baden-Württemberg" Bayern Bremen Hessen Hamburg Mecklenburg-Vorpommern Niedersachsen "Nordrhein-Westfalen" "Rheinland-Pfalz" Saarland "Schleswig-Holstein" Sachsen Thüringen "Sachsen-Anhalt"
do
	echo -n $land" "
done
echo

for monat in {3..4}
do
	for tag in {1..31}
	do
		file="2020-0$monat-$tag.txt"
		if [ -f $file ]
		then
			tabelle1=$(cat $file | grep "Tabelle 1")
			if [ -z "$tabelle1" ]
			then
				continue
			fi
			echo -n "$tag.$monat. "
			for land in Brandenburg Berlin "Baden-Württemberg" Bayern Bremen Hessen Hamburg "Mecklenburg-Vorpommern" Niedersachsen "Nordrhein-Westfalen" "Rheinland-Pfalz" Saarland "Schleswig-Holstein" Sachsen Thüringen "Sachsen-Anhalt"
			do
				infizierte=$(cat $file | grep "Tabelle 1:" -A 35 | egrep "$land[ *]" | head -n 1 | awk '{print $2}' | tr -d ".")
				if [ -z "$infizierte" ] 
				then
					if [ $land == "Mecklenburg-Vorpommern" ]
					then
					infizierte=$(cat $file | grep "Tabelle 1:" -A 35 | grep "Mecklenburg- " | head -n 1 | awk '{print $2}' | tr -d ".")
					fi
				fi
				echo -n $infizierte" "
			done
			echo 
		fi
	done	
done
