#!/bin/bash

function createFirstFolder {
	echo "Creating Folder";
	mkdir -p Folder;
	cd Folder;
	touch Hello.txt;
	echo "Hello World!" > Hello.txt;
	cat Hello.txt;
	
}
createFirstFolder;

function createSecondFolder {
	cd ../;
	echo "Creating Folder2";
	mkdir -p Folder2;
	mv Folder/Hello.txt Folder2;
	cd Folder2;
}
createSecondFolder;

function checkFile {
	echo "Total lenght in char of the file";
	wc -c Hello.txt; #check char size
	echo "File size in the memory of the device";
	du Hello.txt;
	echo "The lines of the file are: ";
	wc -l Hello.txt; #check line count
}
checkFile;

function delete {
	cd ../;
	sleep 5;
	echo "Removing folders.";
	rm -rf Folder;
	rm -rf Folder2;
}
delete;

function userInput {
	echo "Enter your name:";
	read name;
	echo "The name of the user is: $name";
}
userInput;


