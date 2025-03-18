#!/bin/bash

# VARIABLES
greeting="Hello"
user=$(whoami)  # Get the current user
today=$(date +"%A, %B %d, %Y") # Get the current date

# FUNCTION
function say_hello {
    echo "$greeting, $user! Today is $today."
}

# CONDITIONAL STATEMENT
function check_file {
    if [ -f "$1" ]; then  # uses $1 as a positional variable
        echo "✅ File '$1' exists."
    else
        echo "❌ File '$1' does not exist."
    fi
}

# LOOP
function list_files {
    echo "📂 Listing files in the current directory:"
    for file in *; do
        echo " - $file"
    done
}

# USER INPUT
echo "🔹 Enter a filename to check:"
read filename  # Store user input

# FUNCTION CALLS
say_hello  # Call the greeting function
check_file "$filename"  # Check if the file exists and states the argument
list_files  # List files in the directory

echo "🎉 Script execution completed!"
