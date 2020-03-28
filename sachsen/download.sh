time=$(date +%s)
curl https://www.coronavirus.sachsen.de/infektionsfaelle-in-sachsen-4151.html > $time.html
cat $time.html | grep "Kreisfreie Stadt / Landkreis" -A 99 | grep "<tbody>" -A 98 \
	| sed "s/<td>//" | sed "s/<\/td>//" | sed "s/<p>//" | sed "s/<\/p>//" | sed "s/<tbody>//" | sed "s/&nbsp;/0/" \
	| sed "s/<tr>//" | sed "s/<\/tr>//" \
	| sed '/^[[:space:]]*$/d' | sed 's/\r$//' \
	| tr -d " " \
	| awk '!(NR%2){print p" "$0}{p=$0}' | awk '!(NR%2){print p" "$0}{p=$0}' > $time.csv
