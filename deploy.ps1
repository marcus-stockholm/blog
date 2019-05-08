# Clear all files and folders in folder public. Will not delete hidden .git folder.
Remove-Item .\public\** -Recurse

# Build the site in folder public.
hugo

# Set current folder to public.
Set-Location public

# Add all changes to git.
git add --all

# Commit changes.
git commit -m "Building & deploying new version of site."

# Push to Github.
git push origin master

# Go back to previous folder.
Set-Location ..