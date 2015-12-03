default: init
	sfeed_update sfeedrc || true && \
	cd out && sfeed_frames ../feeds/* && \
	cp ../index.html . && \
	sed -i -e 's#href="#href="/rancho/#g' items.html

init:V:
	mkdir -p feeds out

publish:V:
	rsync -vzhr -e ssh /home/joshpar/webdev/planet/out/ urania:/srv/http/nomia.mx/rancho/
