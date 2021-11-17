#!/bin/bash
#*Author : Prince.Myshkin

#*"You should pass us by and forgive us our happiness," said the prince in a low voice!!!"
#*“Beauty will save the world"!!

########################################################################################################

#l when we talk about the loops, iteration comes in the mind
#l All the bash loop constructs have a return status equals to the exit status of the
#last command executed in the loop, or zero if no command was executed

# names=(AMIN REZA ALI SABA)
# for name in  ${names[*]}
# do
#     echo "Your friend name is $name"
# done

#l you can use bounding option as well like ""

# fullname=()
# for name2 in 'Amin Moghim' 'Ali Moradi' 'Reza Hami'
# do
#     echo "Your Friend FullName is: $name2"
# done

#l check all files and folders in a path with loop
# for files in ~/scripts/*
# do
#     if [ -f $files ]; then
#         echo "the $files is a file"
#     elif [ -d $files ] ; then
#         echo "The $files is a directory"
#     else
#         echo "The $file does not exist"
#     fi
# done




#l create a loop to ping 

#l it's very important to use & here to send the ping job to the background
# for ip in {180..187}
# do
#     sleep 1
#     ping -c 3 "192.168.100.$ip" | grep ^64 | cut -d " " -f 4,6
    
# done



    #l IFS ( internal Field Seprator )


# while read line; do
#     echo $line
# done < ${1}

file=~/NodeIP.txt

# for item in $(cat $file); do
#     echo $item
# done

#l with above loop, by default bash uses whitespace as an IFS (Input Field Separator)
#l you can change the default IFS, for instance here we want to use new line \n as an IFS
#l so we can iterate through our file more convinient 

#l IFS is a global value so you can backup the IFS value before changing it how?? :

OLD_IFS=$IFS
IFS=$'\n'

#L now you can just use the default IFS by calling the OLD_IFS variable

for item in $(cat $file); do
    echo $item
done

#L now your file we be iterated line by line

# for (( item=0; item<=5; item++ )) 
#     echo $item
# done