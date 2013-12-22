#################################################################
# !/bin/bash							#
# Towers of Hanoi						#
# v0.1 - 21.12.2013						#
# Created by Moritz Wenzel (moritz.wenzel@secure-mail.biz)	#
#################################################################

while true
	do
		typeset -i a0 a1 a2 a3 a4 b0 b1 b2 b3 b4 c0 c1 c2 c3 c3 c4

		a1=4
		a2=3
		a3=2
		a4=1
		a0=$a1+$a2+$a3+$a4

		b1=0
		b2=0
		b3=0
		b4=0
		b0=$b1+$b2+$b3+$b4

		c1=0
		c2=0
		c3=0
		c4=0
		c0=$c1+$c2+$c3+$c4

		loop1=1

		echo ""
		echo "Welcome to my tiny *Towers of Hanoi* Game"
		while [ $loop1 == 1 ]
			do
				echo "What do you want to do?"
				echo "1 -> Let's play *Towers of Hanoi*"
				echo "2 -> About"
				echo "3 -> Exit"
				read -p "Please make input(1-3): " in1
				case $in1 in
					1)	echo "Let's go! (:"
						loop1=0
						;;
					2)	echo ""	
						echo "==================About=================="
						echo "Created by Moritz Wenzel"
						echo "moritz.wenzel@secure-mail.biz"
						echo "Happy X-Mas everyone in the Facebookgroup"
						echo "facebook.com/groups/dbsoftwares/"
						echo "Do what you want with the code -> GPL ;)"
						echo "========================================="
						echo ""
						;;
					3)	exit
						;;

					*)	echo "Unknown value"
						;;
				esac
			done
		
		typeset -i count1
		count1=0

		while [ $c0 -ne 10 ]
			do
				count1=$count1+1
				clear
				echo "Round "$count1
				echo ""
				echo "-"$a4"- -"$b4"- -"$c4"-" 
				echo "-"$a3"- -"$b3"- -"$c3"-" 
				echo "-"$a2"- -"$b2"- -"$c2"-" 
				echo "-"$a1"- -"$b1"- -"$c1"-" 
				echo "-----------" 
				echo "-A- -B- -C-" 
				
				loop2=1
				loop3=1

				while [ $loop2 == 1 -o $loop3 == 1 ]
					do
						echo ""
						read -p "Take Disc of stack(A, B, C): " in2
						read -p "And put them on stack(A, B, C): " in3

						typeset -i var1
						loop4=1				
						var1=0
						case $in2 in
							A|a)in2=a
								loop2=0
								if [ $a1 -eq 0 ]
									then
										loop2=1
										loop4=0
										echo "The stack is empty, please try again"
								fi
								if [ $a4 -ne 0 -a $loop4 == 1 ]
									then
										var1=$a4
										a4=0
										loop4=0
								fi
								if [ $a3 -ne 0 -a $loop4 == 1 ]
									then
										var1=$a3
										a3=0
										loop4=0
								fi
								if [ $a2 -ne 0 -a $loop4 == 1 ]
									then
										var1=$a2
										a2=0
										loop4=0
								fi
								if [ $a1 -ne 0 -a $loop4 == 1 ]
									then
										var1=$a1
										a1=0
										loop4=0
								fi
								;;
							B|b)in2=b
								loop2=0
								if [ $b1 -eq 0 ]
									then
										loop2=1
										loop4=0
										echo "The stack is empty, please try again"
								fi
								if [ $b4 -ne 0 -a $loop4 == 1 ]
									then
										var1=$b4
										b4=0
										loop4=0
								fi
								if [ $b3 -ne 0 -a $loop4 == 1 ]
									then
										var1=$b3
										b3=0
										loop4=0
								fi
								if [ $b2 -ne 0 -a $loop4 == 1 ]
									then
										var1=$b2
										b2=0
										loop4=0
								fi
								if [ $b1 -ne 0 -a $loop4 == 1 ]
									then
										var1=$b1
										b1=0
										loop4=0
								fi
								;;
							C|c)in2=c
								loop2=0
								if [ $c1 -eq 0 ]
									then
										loop2=1
										loop4=0
										echo "The stack is empty, please try again"
								fi
								if [ $c4 -ne 0 -a $loop4 == 1 ]
									then
										var1=$c4
										c4=0
										loop4=0
								fi
								if [ $c3 -ne 0 -a $loop4 == 1 ]
									then
										var1=$c3
										c3=0
										loop4=0
								fi
								if [ $c2 -ne 0 -a $loop4 == 1 ]
									then
										var1=$c2
										c2=0
										loop4=0
								fi
								if [ $c1 -ne 0 -a $loop4 == 1 ]
									then
										var1=$c1
										c1=0
										loop4=0
								fi
								;;
							*)	echo "Can't understand your first input, please try it again"
								loop2=1
								;;
						esac
						
						case $in3 in
							A|a)in3=a
								loop3=0
								if [ $a1 -eq 0 -a $loop4 == 0 ]
									then
										a1=$var1
										loop4=1
								fi
								if [ $a2 -eq 0 -a $loop4 == 0 ]
									then										
										a2=$var1
										loop4=1
								fi
								if [ $a3 -eq 0 -a $loop4 == 0 ]
									then
										a3=$var1
										loop4=1
								fi
								if [ $a4 -eq 0 -a $loop4 == 0 ]
									then										
										a4=$var1
										loop4=1
								fi
								;;
							B|b)in3=b
								loop3=0
								if [ $b1 -eq 0 -a $loop4 == 0 ]
									then
										b1=$var1
										loop4=1
								fi
								if [ $b2 -eq 0 -a $loop4 == 0 ]
									then										
										b2=$var1
										loop4=1
								fi
								if [ $b3 -eq 0 -a $loop4 == 0 ]
									then
										b3=$var1
										loop4=1
								fi
								if [ $b4 -eq 0 -a $loop4 == 0 ]
									then										
										b4=$var1
										loop4=1
								fi
								;;
							C|c)in3=c
								loop3=0
								if [ $c1 -eq 0 -a $loop4 == 0 ]
									then
										c1=$var1
										loop4=1
								fi
								if [ $c2 -eq 0 -a $loop4 == 0 ]
									then										
										c2=$var1
										loop4=1
								fi
								if [ $c3 -eq 0 -a $loop4 == 0 ]
									then
										c3=$var1
										loop4=1
								fi
								if [ $c4 -eq 0 -a $loop4 == 0 ]
									then										
										c4=$var1
										loop4=1
								fi
								;;
							*)	echo "Can't understand your second input, please try it again"
								loop2=1
								;;
						esac
						
						if [ $in2 == $in3 ]
							then
								echo "You can't put the disc on the same stack! That would not make sense."
								loop2=1
						fi

						c0=$c1+$c2+$c3+$c4
					done
			done
		echo "Yeah congratulations! You've solved it in just "${count1}" moves."

		score1=1
		while [ $score1 == 1 ]
			do
				read -p "Do you want to save your score(y/n)? " in4
		
				case $in4 in
					y|Y|j|J)	read -p "Please enter your name: " name1
							date >> towers-hanoi-score.txt
							echo ${name1}" solved the game in "${count1}" moves!" >> towers-hanoi-score.txt
							echo "" >> towers-hanoi-score.txt
							score1=0
							;;
					n|N)		echo "Have a nice day!"
							exit
							;;
				  	*)		echo "I can't undestand you, please try it again"
							;;
				esac
			done
	done
