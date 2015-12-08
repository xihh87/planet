#!/usr/bin/awk -f

BEGIN {
	FS="\t";

	# Orden en salida de sfeed
	fecha_unix=1
	fecha=2
	titulo=3
	enlace=4
	contenido=5

	# Encabezado del HTML
	print "<!doctype html>" \
		"<html>" \
		"<head>" \
			"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />" \
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"/rancho/reset.min.css\" />" \
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"/rancho/prettify.css\" />" \
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"/rancho/custom.css\" />" \
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"/rancho/container.min.css\" />" \
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"/rancho/card.min.css\" />" \
			"<script src=\"/rancho/prettify.js\"></script>" \
		"</head>" \
		"<body class=\"frame\">" \
			"<div class=\"container\">"

}

{
split($fecha, d, " ")
# Imprimir los enlaces como en sfeed_frames
print "<a class=\"ui fluid card\" href=\"" $enlace "\" target=\"content\">" \
	"<div class=\"content\">" \
		"<div class=\"header\">" \
			$titulo	\
		"</div><!--header-->" \
		"<div class=\"meta\">" \
			 "<span class=\"right floated time\">" d[1] "</span>" \
		"</div><!--meta-->" \
	"</div><!--content-->" \
	"</a>"
}

END {
	# Terminar el HTML
	print "</div>" \
	      "</body>" \
	"</html>"
}
