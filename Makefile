
build: components ls_compile stylus_compile jade_compile
	@component build --dev

jade_compile:
	@./node_modules/.bin/jade \
		./templates/index.jade -o ./

stylus_compile:
	@./node_modules/.bin/stylus \
		. --use 'nib'

ls_compile:
	@./node_modules/.bin/lsc \
		-cb ./scripts

components: component.json
	@component install --dev

clean:
	rm -fr build components scripts/*.js

.PHONY: clean
