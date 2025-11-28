!#/bin/bash


####################
# Author : Veera Durga
# Date : 28/11/25
# Version : Version-1
# Purpose : This Script will help you to check the list of users for the particular repo without goining to GitHub API and it wioll help you to understand from CLI by using script.
############################


# GitHub API URL 
  API_URL = "https://api.github.com"

# GitHub username and personal access token
  USERNAME=$username
  TOKEN=$token


# User and Repository information
  REPO_OWNER=$1
  REPO_NAME=$2



# Function to make GET request TO THE GitHub API
	function github_api_get {
		local endpoint="$1"
		local url="${API_URL}/{endpoint}"



		#send a GET request to the GitHub API with Authetication
		curl -s -u "${USER}:${TOKEN}""$url"
	}

#Function to list users with read access to the repository
 	function list_users_with_read_access {
		local endpoint="repo/${REPO_OWNER}/${REPO_NAME}/collaborators"

		#fetch the list of collaborators on the repository
		collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permission.pull == true) | .login')"

		# Display the list of collaborotars with read access
		if [[ -z "$collaborators" ]]; then
			echo "No usoers with read access found for ${REPO_OWNER}/${REPO_NAME}."
		else
			echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
			echo "$collaborators"
		fi

	}


	#main Script
	
8
	echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
	list_users_with_read-access


	##Next upcoming days or any other this thsi script will have more function including helper and monitoring integration
