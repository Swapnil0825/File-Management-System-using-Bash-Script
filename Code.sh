echo " "
echo "================================================================================"
echo "--------------------------File Management Project-------------------------------"
echo "================================================================================ "
echo " "
ch=0
while [ $ch -lt 15 ]
do
	echo "Welcome, The Main Menu is given below : "
	echo "1) List all file and Directories"
	echo "2) Create a New Files"
	echo "3) Delete Existing Files"
	echo "4) Rename Files"
	echo "5) Edit File"
	echo "6) Search Files"
	echo "7) Details of particular File"
	echo "8) View content of File"
	echo "9) Sort File Content"
	echo "10) List only Directories"
	echo "11) List files of Particular Extension"
	echo "12) Count Number of Directories"
	echo "13) Count Number of Files"
	echo "14) Sort Files in a DIrectories"
	echo "15) Exit"
	echo "What action you want to perform"
	echo "Enter 1-15"
	
	read ch

	case $ch in
	
	1) echo " "
	echo "List all files and Directories here"
	echo "Showing all files and Directories "
	sleep 3
	echo "Loading"
	sleep 3
	echo "--------- Output-------------"
	ls
	echo " "
	
	echo "====================================== "
	echo " "
	;;
	
	2) echo " "
	echo "Create New Files here"
	echo "Which type of file you want to create ! "
	echo "1) .c"
	echo "2) .sh"
	echo "3) .txt"
	echo "Eneter your choice from 1-3 "
	read filechoice

		case $filechoice in
		1) echo " "
		echo "Enter the file name wiothout .c Extension"
		read filename
		touch $filename.c
		echo "---------Output-------------"
		echo "File Created Successfully"
		echo "====================================== "
		echo " "
		;;
		
		2) echo " "
		echo "Enter the file name wiothout .sh Extension"
		read filename2
		touch $filename2.sh
		echo "---------Output-------------"
		echo "File Created Successfully"
		echo "====================================== "
		echo " "
		;;
		
		3) echo " "
		echo "Enter the file name wiothout .txt Extension"
		read filename3
		touch $filename2.txt
		echo "---------Output-------------"
		echo "File Created Successfully"
		echo "====================================== "
		echo " "
		;;
	    
	    esac
            echo "====================================== "
	    echo " "
	;;
	
	3)
	echo "Delete existing file here"
	echo "Eneter name of file you want to Delete ! "
	echo "Note : Please Eneter Full Name with Extension"
	read delfile
	echo "---------Output-------------"
	if [ -f "$delfile" ]
	then
	      rm $delfile
	      echo "Successfully deleted"
	      echo " "
	else 
	      echo "File Does Not Exist "
	      exit
	      fi
	      echo "====================================== "
	      echo " "	   
	;;
	
	4)
	echo "---------Output-------------"
	echo "Rename File here "
	echo "Enter old Name of file with Extension "
	read old
	echo "Checking for file"
	sleep 3
	
	if [ -f "$old" ]
	then
	      echo "Ok File Exist."
	      echo "Now Enter New Name for file with Extension "
	      read new
	      mv $old $new
	      echo "Successfully Rename."
	      echo "Now Your File Exist with $new  Name "
	else 
	      echo "$old File Does Not Exist "
	      exit
	      fi
	      echo "====================================== "	
	      echo " "
	;;
	
	5)
	echo "Edit file Content here "
	echo "Eneter File Name with Extension : "
	read edit
	echo "---------Output-------------"
	echo "Checking for file "
	sleep 3
	
	if [ -f "$edit" ]
	then
	      echo "Opening file."
	      sleep 3
	      nano $edit
	      echo " "
	    
	else 
	      echo "$edit File does not exist..Try again. "
	      exit
	      fi
	      echo "====================================== "	
	      echo " "
	;;
	
	6)
	echo "Search file here "
	echo "Enter File name with Extension to Search "
	read f
	echo "---------Output-------------"
	
	if [ -f "$f" ]
	then
	      echo "Searching for $f File "
	      echo "File Found."
	      find /home -name $f
	      echo " "
	    
	else 
	      echo "File Does not Exist..Try again."
	      exit
	      fi
	      echo "====================================== "
	      echo " "
	;;
	
	7)
	echo "Detail of file here.."
        echo "Enter File Name with Extension to see Detail : "
        read detail
        echo "---------Output-------------"
        echo "Checking for file.."
        sleep 4

        if [ -f "$detail" ];
        then
              echo "Loading Properties.."
              stat $detail
        else
             echo "$detail File does not exist..Try again"
             exit
             fi
             echo "====================================== "
             echo " "

	
	;;
	
	8)
	echo "View content of file here.."
        echo "Enter File Name : "
        read readfile
        echo "---------Output-------------"

        if [ -f "$readfile" ];
        then
             echo "Showing file content.."
             sleep 3
             cat $readfile
        else
             echo "$readfile does not exist"
             exit
             fi
             echo "====================================== "
             echo " "
	;;
	
	9)
	echo "Sort files content here.."
        echo "Enter File Name with Extension to sort :"
        read sortfile
        echo "---------Output-------------"

        if [ -f "$sortfile" ];
        then
             echo "Sorting File Content.."
             sleep 3
             sort $sortfile
        else
             echo "$sortfile File does not exist..Try again."
             exit
             fi
             echo "====================================== "
             echo " "
	;;
	
	10)
	 echo "---------Output-------------"
         echo "List of all Directories here.."
         echo "showing all Directories..."
         echo "Loading.."
         sleep 3
         ls -d */
         echo "====================================== "
         echo " "
	;;
	
	11)
	echo "List of Files with Particular extensions here.."
        echo "Which type of file list you want to see?"
        echo "1- .c"
        echo "2- .sh"
        echo "3- .txt"
        echo "Enter your choice from 1-3"
        read extopt
        echo "---------Output-------------"

        if [ $extopt == 1 ]
        then
             echo "List of .c Files shown below."
             echo "Loading.."
             sleep 3
             ls *.c
        elif [ $extopt == 2 ]
        then
             echo "List of .sh Files shown below."
             echo "Loading.."
             sleep 3
             ls *.sh
        elif [ $extopt == 3 ]
        then
             echo "List of .txt Files shown below."
             echo "Loading.."
             sleep 3
             ls *.txt
        else
             echo "Invalid Input..Try again.."
             exit
             fi
             echo "====================================== "
             echo " "
	;;
	
	12)
	echo "---------Output-------------"
        echo "Total number of Directories here.."
        echo "Loading all directories.."
        sleep 3
        echo "Counting.."
        sleep 3
        echo "Number of Directories are : "
        echo */ | wc -w
        echo "====================================== "
        echo " "
	;;
	
	13)
	echo "---------Output-------------"
        echo "Total Numbers of Files in Current Directory here.."
        echo "Loading all files.."
        sleep 3
        echo "Number of Files are : "
        ls -l | grep -v 'total' | grep -v '^d' | wc -l
        echo "====================================== "
        echo " "
	;;
	
	14)
	echo "---------Output-------------"
        echo "Sort Files here.."
        echo "Your Request of Sorting file is Generated."
        echo "Sorting.."
        sleep 3
        ls | sort
        echo "====================================== "
        echo " "
	;;
	
	15)echo " "
	echo "Good Bye"
	echo "Successfully Exit"
	echo " "
	exit
	;;
	esac
done

