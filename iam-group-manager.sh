#!/bin/bash


while true
do
    echo "================================"
    echo "       IAM GROUP MANAGEMENT"
    echo "================================"
    echo "1. Create IAM Group"
    echo "2. List IAM Groups"
    echo "3. Delete IAM Group"
    echo "4. Add User to Group"
    echo "5. Remove User from Group"
    echo "6. List Group Users"
    echo "7. Exit"
    echo "================================"

    read -p "Enter your choice: " choice

    case $choice in

        1)
            read -p "Enter group name: " groupname

            aws iam create-group --group-name "$groupname"

            if [ $? -eq 0 ]; then
                echo "Group '$groupname' created successfully."
            else
                echo "Failed to create group."
            fi
            ;;

        2)
            echo "IAM Groups:"

            aws iam list-groups \
                --query 'Groups[*].GroupName' \
                --output table
            ;;

        3)
            read -p "Enter group name to delete: " groupname

            read -p "Are you sure? (yes/no): " confirm

            if [ "$confirm" = "yes" ]; then

                aws iam delete-group \
                    --group-name "$groupname"

                if [ $? -eq 0 ]; then
                    echo "Group '$groupname' deleted successfully."
                else
                    echo "Failed to delete group."
                fi

            else
                echo "Deletion cancelled."
            fi
            ;;

        4)
            read -p "Enter username: " username
            read -p "Enter group name: " groupname

            aws iam add-user-to-group \
                --user-name "$username" \
                --group-name "$groupname"

            if [ $? -eq 0 ]; then
                echo "User '$username' added to group '$groupname'."
            else
                echo "Failed to add user to group."
            fi
            ;;

        5)
            read -p "Enter username: " username
            read -p "Enter group name: " groupname

            aws iam remove-user-from-group \
                --user-name "$username" \
                --group-name "$groupname"

            if [ $? -eq 0 ]; then
                echo "User '$username' removed from group '$groupname'."
            else
                echo "Failed to remove user from group."
            fi
            ;;

        6)
            read -p "Enter group name: " groupname

            echo "Users in group '$groupname':"

            aws iam get-group \
                --group-name "$groupname" \
                --query 'Users[*].UserName' \
                --output table
            ;;

        7)
            echo "Exiting..."
            break
            ;;

        *)
            echo "Invalid choice. Please select 1-7."
            ;;

    esac

    echo
done
