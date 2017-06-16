# This file contains functions used to create an SVG file.
# Load (source) the functions in circle.sh, line.sh, and arc.sh for drawing circles, lines, and arcs.
#
# Each object in the resulting SVG file will be named "object_#", where # is the sequential numbering
#	of the objects in the order they are created.
# The function bumpname() increments and creates these object names each time it is called.
#
# The functions startpic and endpic add the necessary text header and footer, respectively,
#	to the SVG metafile.
#
# The function drawpic is intended to be called between startpic and endpic.
#	It adds the actual picture elements to the SVG file.
#	drawpic requires two arguments: 
#		the name of the file containing the function calls to circle, line, and arc that define the picture
#		the name of the SVG file to be created.


source circle.sh
source line.sh
source arc.sh

function bumpname()
{
    NAMEINDEX=$((NAMEINDEX + 1))
    NEW_NAME=object_$NAMEINDEX
}

function startpic()
{
    cat header > $1
}

function drawpic()
{
    source $1 3>> $2
}

function endpic()
{
    cat footer >> $1
}
