#!/bin/bash
# prompt for fields to be customized

echo "Please enter personal details to be added to your signature file."
echo "Please enter your LAST NAME:"
read lastname
echo "Please enter your FIRST NAME:"
read firstname
echo "Please enter your 3 digit PHONE EXTENSION:"
read phoneext
echo "Please enter your TITLE, e.g. Master of Disaster"
read title
echo "Would you like to add your CELL PHONE? (Y/n)"
read optcell
if [ $optcell == yes ]
then echo "Please enter your CELL PHONE number:"
read cell
fi
echo "Generating signature file..."

cat ./signature.htm | sed "s/Toni/$firstname/g" | sed "s/Testa/$lastname/g" | sed "s/86880 666/86880 $phoneext/g" | sed "s/Master of Disaster/$title/g" > output/signature.$firstname.$lastname.htm
