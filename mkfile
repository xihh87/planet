default: init
	sfeed_update sfeedrc || true && \
	cd out && sfeed_frames ../feeds/* && \
	cp ../index.html .

init:V:
	mkdir -p feeds out
