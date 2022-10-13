datenow= date +%d-%m-%Y-%R
echo $datenow
last | wc -l > "/home/test/Documents/Shell.exe/Job8/number_connection-$(date +%d-%m-%Y-%R).txt"
tar -cvf "/home/test/Documents/Shell.exe/Job8/Backup/number_connection-$(date +%d-%m-%Y-%R).tar" /home/test/Documents/Shell.exe/Job8/number_connection*.txt
