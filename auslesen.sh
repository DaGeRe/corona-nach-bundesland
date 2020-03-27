for land in Brandenburg Berlin "Baden-Württemberg" Bayern Bremen Hessen Hamburg Mecklenburg-Vorpommern Niedersachsen "Nordrhein-Westfalen" "Rheinland-Pfalz" Saarland "Schleswig-Holstein" Sachsen Thüringen "Sachsen-Anhalt"
do
	echo -n $land" "
done
echo

for i in {4..26}
#for land in "Baden-Württemberg" 
do
	echo -n "$i.3. "
	for land in Brandenburg Berlin "Baden-Württemberg" Bayern Bremen Hessen Hamburg Mecklenburg-Vorpommern Niedersachsen "Nordrhein-Westfalen" "Rheinland-Pfalz" Saarland "Schleswig-Holstein" Sachsen Thüringen "Sachsen-Anhalt"
	do
		infizierte=$(cat $i.txt | grep "Tabelle 1:" -A 30 | grep "$land " | head -n 1 | awk '{print $2}' | tr -d ".")
		echo -n $infizierte" "
	done
	echo 
done	
