mkdir temp
allFiles=""
for i in {2..17}
do
	echo "Land: $i"
	absolut=$(cat plotdata | tail -n 1 | awk '{print $'$i'}')
	cat plotdata | awk '{print $'$i'-val;val=$'$i'}' > temp/$i.txt
	cat plotdata | awk '{print ($'$i'-val)/'$absolut';val=$'$i'}' > temp/relativ_$i.txt
	allFiles="$allFiles temp/$i.txt"
	allFiles_relativ="$allFiles_relativ temp/relativ_$i.txt"
done
paste $allFiles > anstieg_absolut.csv
paste $allFiles_relativ > anstieg_relativ.csv
