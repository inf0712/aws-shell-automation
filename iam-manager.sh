#!/bin/bash

while true
do
    echo "================================"
    echo "       IAM USER MANAGEMENT"
    echo "================================"
    echo "1. Create IAM User"
    echo "2. List IAM Users"
    echo "3. Get User Details"
    echo "4. Delete IAM User"
    echo "5. Exit"
    echo "================================"

    read -p "Enter your choice: " choice

    case $choice in

 	1)
   		read -p "Enter username: " username

    		aws iam create-user --user-name "$username"

    		if [ $? -eq 0 ]; then
        	echo "User '$username' created successfully."
    		else
        	echo "Failed to create user."
    		fi
    ;;


        2)
   		 echo "IAM Users:"
    		aws iam list-users \
        		--query 'Users[*].UserName' \
        		--output table
    ;;


        3)
   		 read -p "Enter username: " username

    		aws iam get-user --user-name "$username"
    ;;

        4)
		    read -p "Enter username to delete: " username

		    read -p "Are you sure? (yes/no): " confirm

	    			if [ "$confirm" = "yes" ]; then
        		aws iam delete-user --user-name "$username"

        		if [ $? -eq 0 ]; then
            			echo "User '$username' deleted successfully."
        		else
            			echo "Failed to delete user."
        		fi
    			else
        			echo "Deletion cancelled."
    			fi
    ;;

        5)
            echo "Exiting..."
            break
            ;;

        *)
            echo "Invalid choice"
            ;;

    esac

    echo
done
