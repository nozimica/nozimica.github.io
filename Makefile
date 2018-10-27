basicUsage:
	jekyll serve --detach
	jekyll build --watch

killServer:
	pkill -f jekyll

install:
	bundle install --path ~/.gem
