for i in {4..9}; do wget https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Situationsberichte/2020-03-0$i-de.pdf?__blob=publicationFile -O $i.pdf; done
for i in {10..25}; do wget https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Situationsberichte/2020-03-$i-de.pdf?__blob=publicationFile -O $i.pdf; done

for i in {4..25}
do
        pdftotext -layout $i.pdf
done
