mkdir temp
allFiles=""
for i in {2..18}
do
	echo "Land: $i"
	cat plotdata2 | awk '{print $'$i'-val;val=$'$i'}' > temp/$i.txt
	cat plotdata2 | awk '{if ($'$i'+1==1){d=1;} else {d=$'$i';} print ($'$i'-val)/d;val=$'$i'}' > temp/relativ_$i.txt
	allFiles="$allFiles temp/$i.txt"
	allFiles_relativ="$allFiles_relativ temp/relativ_$i.txt"
done
paste $allFiles > anstieg_absolut.csv
#awk '{c=0;for(i=1;i<=NF;++i){c+=$i};print $0, " ", c}' anstieg_absolut.csv > anstieg_absolut2.csv
#mv anstieg_absolut2.csv anstieg_absolut.csv
paste $allFiles_relativ > anstieg_relativ.csv
#awk '{c=0;for(i=1;i<=NF;++i){c+=$i};print $0, " ", c}' anstieg_relativ.csv > anstieg_relativ2.csv
#mv anstieg_relativ2.csv anstieg_relativ.csv
