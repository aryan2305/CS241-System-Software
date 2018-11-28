printf "%-10s %-10s %-10s %-10s \n" "Time" "Memory" "Disk" "CPU"

for (( i = 0; i < 13; i++ )); do

	t=$(($i*5))

	x=`top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}'`

	y=`df | awk 'NR>1 {x=x+$2}{y=y+$3} END{print y/x*100 "%"}'`

	z=`free -t | grep "Total"| awk '{print $3/$2*100 "%"}'`

	printf "%-10s %-10s %-10s %-10s \n" $t $z $y $x

	sleep 5
done


