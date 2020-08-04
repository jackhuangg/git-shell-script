#! /bin/bash

echo "This script was written to make the first push to a new github repo. Use carefully :3"

read -p "Please copy paste the HTTPS link here -> " LINK 

git init
git status
read -p "Enter 1 to add all or manually specify which files to commit and push... add a space between each file and pls no typos -> " FILES
if [ "$FILES" == "1" ]
then   
    git add .
else 
    git add $FILES  
fi

read -p "Enter a commit message -> " COMMITMESSAGE
git commit -m "$COMMITMESSAGE"
git remote add origin $LINK
git push -u origin master



