
year=`date +%Y`
month=`date +%m`
day=`date +%d`
hour=$(date +%H)
minute=$(date +%M)
second=$(date +%S)

yesterday_y=$(date -d yesterday +%Y)
yesterday_m=$(date -d yesterday +%m)
yesterday_d=$(date -d yesterday +%d)
yesterday_h=$(date -d yesterday +%H)
yesterday_i=$(date -d yesterday +%M)
yesterday_s=$(date -d yesterday +%S)

echo $year $month $day $hour $minute $second
echo $yesterday_y $yesterday_m $yesterday_d $yesterday_h $yesterday_i $yesterday_s
