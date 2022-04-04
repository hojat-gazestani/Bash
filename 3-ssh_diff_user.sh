#!/bin/bash

declare -A servers=( ["router"]="patriotlb"  ["website"]="patriotwebsite" ["nasa"]="patriotnasa" ["db"]="patriotdb" ["etc"]="patriot-etc" ["website5"]="patriotop" ["app"]="mag" ["repo"]="patriot-repo" ["mail"]="mail")

for serverName in "${!servers[@]}"; do  
    echo ssh "${servers[$serverName]}@$serverName" hostname; 
done
