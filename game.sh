#################################################################
# !/bin/bash													#
# Towers of Hanoi												#
# v0.1 - 21.12.2013												#
# Created by Moritz Wenzel (moritz.wenzel@secure-mail.biz)		#
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

				while [ $loop2 == 1 ]
					do
						echo ""
						read -p "Take Disc of stack(A, B, C): " in2
						read -p "And put them on stack(A, B, C): " in3
				
						case $in2 in
							A|a)if [ $a4 -gt 0 ]
									then
										
								
								loop2=0
								;;
							B|b)in2=b
								loop2=0
								;;
							C|c)in2=c
								loop2=0
								;;
							*)	echo "Can't understand your first input, please try it again"
								loop2=1
								;;
						esac
						
						case $in3 in
							A|a)in3=a
								loop2=0
								;;
							B|b)in3=b
								loop2=0
								;;
							C|c)in3=c
								loop2=0
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
					done
				
			done
	done
