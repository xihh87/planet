default: init
	sfeed_update sfeedrc || true && \
	cp index.html *.css out && \
	./filter feeds/* | sort -nr | ./url-uniq | ./items > out/items.html

clean:
	rm -r feeds out

init:V:
	mkdir -p feeds out

publish:V:
	rsync -vzhr ./out/ /srv/http/rancho.nomia.mx/
