These were the steps followed:

- Taken from: [Making an independent website](http://kbroman.org/simple_site/pages/independent_site.html)
- Taken from: [Making a personal site](http://kbroman.org/simple_site/pages/user_site.html)


	git clone git@github.com:kbroman/simple_site.git githubpage
	cd githubpage/
	rm -rf .git
	git init
	vi _config.yml 
	vi _includes/themes/twitter/default.html 
	vi index.md 
	cd pages/
	rm -f *
	cd ..
	vi index.md 
	vi ReadMe.md 
	vi License.md 
	git add .
	git commit -m "Initial commit"
	git remote add origingh git@github.com:nozimica/nozimica.github.io.git
	git push origingh master
