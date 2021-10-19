#echo 'PS1="\e\033[35m($\u)\[--\e\033[32m[\w]\[\e\033[34m-> \[\e\033[0m\["' >> ~/.bashrc
#!/bin/bash

echo -e "\033[33mWelcome to this script $USER"
echo -e "\033[34mCreated by RemaxBoxTeam"
echo -e "\033[31mTelegram Channel : https://t.me/RemaxBoxTeam"

printf "\033[32mPlease Choose an option \033[0m\n"
select option in termux debian
do
	

	if [[ $option == 1 ]] ; then
		apt-get update
		apt-get install toilet figlet screenfetch bash
		chsh -s bash
		clear
		showfigfonts
		printf "\033[31mEnter the logo name ex : standard -> \033[0m"
		read logo
		printf "\033[34mEnter your desired name -> \033[0m"
		read name
		for ((x=0;x<4;x++)) ; do
			echo ""
		done
		screenfetch
		echo "\033[32mDo you want to use screenfetch [y , n] -> \033[0m"
		read opt
		if [[ $opt == "y" ]] ; then
			echo -e "toilet -F gay -f $logo $name\nscreenfetch" > ~/.bashrc
			echo 'PS1="\e\033[35m(\u)\[--\e\033[32m[\w]\[\e\033[34m-> \[\e\033[0m\["' >> ~/.bashrc
		else
			echo "toilet -F gay -f $logo $name" > ~/.bashrc
			echo 'PS1="\e\033[35m(\u)\[--\e\033[32m[\w]\[\e\033[34m-> \[\e\033[0m\["' >> ~/.bashrc
			echo "Please Open the Termux again :) "
			sleep 2
			logout 
		fi
	else
	
		#if [[ $EUID == 0 ]] ; then
			sudo apt-get update
			sudo apt-get install toilet figlet screenfetch bash
			sudo chsh -s /bin/bash $USER
			clear
			showfigfonts
			printf "\033[31mEnter the logo name ex : standard -> \033[0m"
			read logo
			printf "\033[34mEnter your desired name -> \033[0m"
						
			read name
			toilet -F gay -f $logo $name
			for ((x=0;x<4;x++)) ; do
				echo ""
			done
			screenfetch
			printf "\033[32mDo you want to use screenfetch [y , n] -> \033[0m"
			read opt
			if [[ $opt == "y" ]] ; then
				echo "toilet -F gay -f $logo $name" > ~/.bashrc
				echo "screenfetch" >>  ~/.bashrc
				echo 'PS1="\e\033[35m(\u)\[--\e\033[32m[\w]\[\e\033[34m-> \[\e\033[0m\["' >> ~/.bashrc
				echo "The operation has been successfully"
				echo "Open the Terminal Again "
				sleep 2
				exit 1
			else
				echo "toilet -F gay -f $logo $name" > ~/.bashrc
				echo 'PS1="\e\033[35m(\u)\[--\e\033[32m[\w]\[\e\033[34m-> \[\e\033[0m\["' >> ~/.bashrc
				echo "The operation has been successfully"
				echo "Open the terminal again"
				sleep 2
				
				exit 1
			fi
		#else
			printf "\033[33mPlease Run as root user :)\033[0m\n"
			exit 0
			
		#fi
	fi
		
		
done
