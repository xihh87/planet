#!/usr/bin/awk -f

BEGIN {
	FS="\t";

	# Orden en salida de sfeed
	fecha=1
	titulo=3
	enlace=4
	contenido=5

	# Encabezado del HTML
	print "<html><head><link rel=\"stylesheet\" type=\"text/css\" href=\"/rancho/../style.css\" /><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" /></head><body class=\"frame\"><div id=\"items\">"
	print "<table cellpadding=\"0\" cellspacing=\"0\">"

}

{
# Imprimir los enlaces como en sfeed_frames
print "<tr><td nowrap valign=\"top\">"  \
	"</td><td nowrap valign=\"top\"><a href=\"" \
	$enlace	\
	"\" target=\"content\">" \
	$titulo	\
	"</a></td></tr>"
}

END {
	# Terminar el HTML
	print "</table>"
	print "</div></body>"
	print "</html>"
}
