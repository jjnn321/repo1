# List of repository names
repositories=("repo1" "repo2" "repo3")

# Loop through the list of repositories
for repo in "${repositories[@]}"
do
   # Create a new repository on GitHub
   # (You can use the GitHub API or a library like hub for this)
   # Example:
   curl -u 'jjnn321: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' https://api.github.com/user/repos -d '{"name":"'$repo'"}'

   # Navigate to the local repository directory
   # (prej too many arguments) cd /D "Z:\.repos\$repo"


   # Initialize a Git repository (if not already)
   git init

   # Add files and commit changes
   git add .
   git commit -m "Initial commit"

   # Add a remote to the GitHub repository
   git remote add origin https://github.com/jjnn321/$repo.git

   # Push to GitHub
   git push -u origin master
done