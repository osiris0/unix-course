README.md:
	echo "# Unix Course Project" > README.md
	echo \*\*$$(date)\*\* >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+"  >> README.md
