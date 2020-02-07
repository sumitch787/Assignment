#!/bin/bash

new_function(){


read -p "Enter First Name:" firstname
read -p "Enter Last Name:" lastname

printf "Hello World,\nI am $firstname $lastname\n"
}

new_function
