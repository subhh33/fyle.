#!/bin/bash

title="Component/Service Creation"
prompt="Pick an option:"
options=("Components" "Services")

echo "$title"
PS3="$prompt "
select opt in "${options[@]}" "Quit"; do 
    case "$opt" in
        "Components")
            echo "You picked $opt, which is option 1"
            echo "Creating Component"
            echo "Enter Component Name: "
            read component_name
            ng generate component components/"$component_name"
            echo "Goodbye!"
            break
            ;;
        "Services")
            echo "You picked $opt, which is option 2"
            echo "Creating Service"
            echo "Enter Service Name: "
            read service_name
            ng generate service services/"$service_name"/"$service_name"
            echo "Goodbye!"
            break
            ;;
        "Quit")
            echo "Goodbye!"
            break
            ;;
        *)
            echo "Invalid option. Try another one."
            ;;
    esac
done
