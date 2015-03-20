#!/bin/bash
# This is a basic bash script
flashred=$(tput setab 0; tput setaf 1; tput blink)
red=$(tput setab 0; tput setaf 1)
none=$(tput sgr0)
echo -e $flashred"ERROR: "$none$red"Something went wrong."$none

today=$(date +"%d-%m-%Y")
time=$(date +"%H:%M:%S")
printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo "$d"

a=()
b=("apple" "banana" "cherry")
echo ${b[2]}
b[5]="kiwi"
b+=("mango")
echo ${b[@]}
declare -A myarray
myarray[color]=blue
myarray["office building"]="HQ West"

echo ${myarray["office building"]} is ${myarrar[color]}

a="This is my string!"
if [[ $a =~ [0-9]+ ]]; then
	echo "There are numbers in the string: $a"
else
	echo "There are no numbers in the string: $a"
fi

i=0
while [ $i -le 10 ]; do
	echo i:$i
	((i+=1))
done

j=0
until [ $j -ge 10 ]; do
	echo j:$j
	((j+=1))
done


for (( i=1; i<=10; i++ ))
do
	echo $i
done

arr=("apple" "banana" "cherry")
for i in ${arr[@]}
do
	echo $i
done


declare -A arr
arr["name"]="Danielle"
arr["id"]="256034"
for i in "${!arr[@]}"
do 
	echo "$i: ${arr[$i]}"
done

a="dog"
case $a in 
	cat) echo "Feline";;
	dog|puppy) echo "Canine";;
	*) echo "No match!";;
esac

function greet {
	echo "Hi, $1! what a nice $2!"
}

echo "And now, a greeting!"
greet Danielle Morning
greet Everybody Evening



for i in $@
do
	echo $i
done
echo "there were $# arguments."

while getopts u:p: option; do
	case $option in 
		u) user=$OPTARG;;
		p) pass=$OPTARG;;
	esac
done

echo "User: $user / Pass: $pass"
