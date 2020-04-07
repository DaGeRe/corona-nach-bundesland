rm plotdata.csv
for land in Brandenburg Berlin "Baden-Württemberg" Bayern Bremen Hessen Hamburg Mecklenburg-Vorpommern Niedersachsen "Nordrhein-Westfalen" "Rheinland-Pfalz" Saarland "Schleswig-Holstein" Sachsen Thüringen "Sachsen-Anhalt"
do
	echo -n $land" " >> plotdata.csv
done
echo >> plotdata.csv

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
			echo -n "$tag.$monat. " >> plotdata.csv
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
				echo -n $infizierte" " >> plotdata.csv
			done
			echo >> plotdata.csv 
		fi
	done	
done

awk '{c=0;for(i=2;i<=NF;++i){c+=$i};print $0, " ", c}' plotdata.csv > plotdata2.csv
