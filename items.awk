#!/usr/bin/awk -f

BEGIN {
	FS="\t";

	# Orden en salida de sfeed
	fecha=1
	titulo=3
	enlace=4
	contenido=5

	# Encabezado del HTML
	print "<!doctype html>" \
		"<html>" \
		"<head>" \
			"<link rel=\"stylesheet\" type=\"text/css\" href=\"/rancho/semantic.min.css\" />" \
			"<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />" \
		"</head>" \
		"<body class=\"frame\">" \

}

{
# Imprimir los enlaces como en sfeed_frames
print "<a class=\"ui fluid card\" href=\"" $enlace "\" target=\"content\">" \
	"<div class=\"ui fluid card\">" \
		"<div class=\"content\">" \
		$titulo	\
		"</div><!--content-->" \
	"</div><!--card-->" \
	"</a>"
}

END {
	# Terminar el HTML
	print "</body>" \
		"</html>"
}
