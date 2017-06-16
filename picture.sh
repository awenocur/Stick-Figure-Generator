#!/bin/bash

# This master script calls all the functions implemented in
#	the other files of this project.


# Sourcing object.sh also sources circle.sh, arc.sh, and line.sh,
#	as well as creating the functions startpic, drawpic, and endpic.
source object.sh

# startpic writes the needed header information into the specified SVG file.
startpic picture.svg

# drawpic reads arc, line, and circle calls, along with coordinates
#	from the specified file and writes out the needed code to the SVG file. 
drawpic stick_figure picture.svg

# startpic writes the needed ending (footer) information into the specified SVG file.
endpic picture.svg
