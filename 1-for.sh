#!/bin/bash

for i in c d
do
    for j in a b
    do
        echo $i $j
    done
done
echo

StringVal="Welcome to linuxhint"
for val in $StringVal
do
    echo $val
done
echo 

declare -a StringArray=("Linux Mint" "Fedora" "Red Hat Linux" "Ubuntu" "Debian")
for val in ${StringArray[@]}; do
    echo $val
done
echo

declare -a StringArray=("Windows XP" "Windows 10" "Windows ME" "Windows 8.1" "Windows Server 2016")
for val in "${StringArray[@]}"; do
    echo $val
done
echo

LanguageArray=("PHP" "Java" "C#" "C++" "VB.Net" "Python" "Perl")
for val1 in ${LanguageArray[*]}; do
    echo $val1
done
echo

for val1 in "${LanguageArray[*]}"; do
    echo $val1
done
echo

DataList=" HTML5, CCS3, BootStrap, JQery "
Field_Separator=$IFS

IFS=,
for val in $DataList; do
    echo $val
done
IFS=$Field_Separator
echo

str_array1=("Magento 2.2.4" "WooCommerce")
str_array2=("CodeIgnitor" "Laravel")
combine=(str_array1 str_array2)
for arrItem in ${combine[@]}; do
    eval 'for val in "${'$arrItem'[@]}"; do echo "$val"; done'
done
echo

stringList=WordPress,Joomla,Magento
for val in ${stringList//,/ }; do
    echo $val
done
