i=$(cat Shell_Userlist.csv | wc -l )
let i=i+1
for a in $(eval echo "{2..$i..1}")
do
    test[$a]=$(sed -n "$a p" Shell_Userlist.csv)

for b in {1..5..1}
do
     infos[$b]=$(echo ${test[$a]} | cut -d ',' -f$b)
     infos[$b]=$(echo ${infos[$b]} | cut -d ' ' -f$b)

done
use[$a]=${infos[2]}"-"${infos[3]}
echo ${use[$a]}
n=${infos[5]}
case $n in 
Admin*)
sudo useradd -m -u ${infos[1]} -p ${infos[4]} --gid root ${use[$a]}
echo "root"
;;
*)
sudo useradd -m -u ${infos[1]} -p ${infos[4]} ${use[$a]}
echo "user"
;;
esac
done
