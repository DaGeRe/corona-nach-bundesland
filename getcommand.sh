i=2
for land in Brandenburg Berlin "Baden-Württemberg" Bayern Bremen Hessen Hamburg Mecklenburg-Vorpommern Niedersachsen "Nordrhein-Westfalen" "Rheinland-Pfalz" Saarland "Schleswig-Holstein" Sachsen Thüringen
do
	echo -n "'plotdata' u 1:$i w linespoint title '$land', "
	i=$(($i+1))
done
