i=2
echo -n "plot "
for land in Brandenburg Berlin "Baden-Württemberg" Bayern Bremen Hessen Hamburg Mecklenburg-Vorpommern Niedersachsen "Nordrhein-Westfalen" "Rheinland-Pfalz" Saarland "Schleswig-Holstein" Sachsen Thüringen "Sachsen-Anhalt"
do
	echo -n "'plotdata' u 0:$i w linespoint title '$land', "
	i=$(($i+1))
done
echo
echo "Anstiege"
i=1
echo -n "plot "
for land in Brandenburg Berlin "Baden-Württemberg" Bayern Bremen Hessen Hamburg Mecklenburg-Vorpommern Niedersachsen "Nordrhein-Westfalen" "Rheinland-Pfalz" Saarland "Schleswig-Holstein" Sachsen Thüringen "Sachsen-Anhalt"
do
	echo -n "'anstieg_absolut.csv' u 0:$i w linespoint title '$land', "
	i=$(($i+1))
done
echo
echo "Relative Anstiege"
i=1
echo -n "plot "
for land in Brandenburg Berlin "Baden-Württemberg" Bayern Bremen Hessen Hamburg Mecklenburg-Vorpommern Niedersachsen "Nordrhein-Westfalen" "Rheinland-Pfalz" Saarland "Schleswig-Holstein" Sachsen Thüringen "Sachsen-Anhalt"
do
	echo -n "'anstieg_relativ.csv' u 0:$i w linespoint title '$land', "
	i=$(($i+1))
done
