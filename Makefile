THIRD_PARTY_FILES = \
	js/verlet-js/vec2.js \
	js/verlet-js/constraint.js \
	js/verlet-js/verlet.js \
	js/verlet-js/objects.js \
								
3rdparty.js: $(THIRD_PARTY_FILES)
	#node_modules/.bin/smash $(CM_FILES) | node_modules/.bin/uglifyjs - -c -m -o $@
	rm -f $@
	cat $(THIRD_PARTY_FILES) > $@.cat
	node_modules/.bin/uglifyjs < $@.cat > $@
