cd C:\folder\%1
echo #%1 >> README.md
git init
git add README.md
git add .
git commit -m "first commit"
git remote add origin https://github.com/github_username/%1.git
git push -u origin master 
code .