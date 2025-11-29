GitHub Repository Collaborators List Script
Author

Veera Durga

Date

28/11/25

Version

1.0

Purpose

This Bash script allows you to list all users with read access to a specific GitHub repository from the command line.
It uses the GitHub API and jq for parsing JSON responses, so you don’t need to manually check collaborators via the GitHub website.

Features

Validates that required arguments are provided.

Connects to GitHub using your username and personal access token.

Fetches collaborators for the specified repository.

Filters users with read permissions (pull access).

Displays the list of usernames in the terminal.

Easy to extend with additional helper or monitoring functions.

Prerequisites

Bash shell

curl installed

jq installed

A GitHub personal access token with appropriate repository access

Usage

Export your GitHub credentials:

export username="your_github_username"
export token="your_personal_access_token"

Run the script with the repository owner and repository name as arguments:

bash gitapilistusers.sh <repo_owner> <repo_name>

Example:

bash gitapilistusers.sh veerajagannadham Shell-practisde
Script Flow

Helper function checks that exactly two arguments are provided.

Sets GitHub API URL and reads credentials from environment variables.

API function sends a GET request to GitHub to retrieve collaborators.

List function filters collaborators with read (pull) access using jq.

Displays the list of usernames or a message if no users are found.

Example Output
Listing users with read access to veerajagannadham/Shell-practisde...
Users with read access:
veerajagannadham
Notes

Make sure the personal access token has the repo scope for private repositories.

The script currently lists only collaborators with read access. It can be extended to show other permissions.

Works for both public and private repositories (with proper token permissions).

Future Enhancements

Prompt for credentials interactively.

Display all collaborators with their exact permissions (admin, push, pull).

Add monitoring or reporting features for repository collaborators.

Integrate with CI/CD pipelines for automated checks.
