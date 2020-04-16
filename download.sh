function download {
	if [ ! -f $2 ]
	then
		wget $1 -O $2
        	pdftotext -layout $2
	fi
}

# März
for i in {4..9}
do 
	download https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Situationsberichte/2020-03-0$i-de.pdf?__blob=publicationFile 2020-03-$i.pdf
done
for i in {10..31}
do 
	download https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Situationsberichte/2020-03-$i-de.pdf?__blob=publicationFile 2020-03-$i.pdf
done

# April
for i in {1..9}
do 
	download https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Situationsberichte/2020-04-0$i-de.pdf?__blob=publicationFile 2020-04-$i.pdf
done

for i in {10..15}
do 
	download https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Situationsberichte/2020-04-$i-de.pdf?__blob=publicationFile 2020-04-$i.pdf
done

