default: init
	sfeed_update sfeedrc || true && \
	cp index.html *.css *.js out && \
	cat feeds/* | sort -nr | awk -f items.awk > out/items.html

clean:
	rm -r feeds out

init:V:
	mkdir -p feeds out

publish:V:
	rsync -vzhr -e ssh /home/joshpar/webdev/planet/out/ urania:/srv/http/nomia.mx/rancho/
