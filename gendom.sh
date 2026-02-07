#!/bin/bash
for i in $(seq -w 1 10000); do     # we use seq command for loop
number=$(( (RANDOM % (15 - 3 + 1)) + 3 ))
Z=`head -c 2048 /dev/urandom | md5sum | head -c $number;`
#Z=$(openssl rand -base64 12 | fold -bw20);      # generate a random base-64 string of length 'i'  
randomtld=(.com .net .co .uk .xyz .jp)				 # possible TLDs list, you can add or remove as needed   
x="${randomtld[RANDOM%${#randomtld[@]}]}"		#choose a random TLD                
echo "$Z$x A" >> domains;     # append it to the file and write a newline, remove 'A' if you don't want the record type appended  
done
