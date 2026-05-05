# phony command to build and open in firefox


.PHONY: build

build:
	# don't wait for command to finish to open firefox
	bundle exec jekyll serve & \
	firefox http://localhost:4000
	# bring server back to foreground
	fg %1

