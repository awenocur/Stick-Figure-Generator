# The functions in this file are used to add circles to our SVG file.
# The circle function defines a circle.
#	It requires three arguments:
#		circle 1 2 3
#	The arguments are as follows:
#		The radius of the circle in pixels.
#		The x-coordinate of the center of the circle.
#		The y-coordinate of the center of the circle.
#
# The second function (blackcircle) calls the first function (circle)
#	and specifies a color (black) for the fill of the circle.
#	blackcircle requires the same three arguments (radius, center-x, center-y) as circle. 

function circle()
{
    local radius=$1 horizontal=$2 vertical=$3
    bumpname
    if [ -n "$4" ]
    then
	local fill=$4
    else
	local fill='#ffffff'
    fi
    cat circle | sed -e "s/RADIUS/$radius/g;s/VERTICAL/$vertical/g;s/HORIZONTAL/$horizontal/g;s/FILL/$fill/g;s/NAME/$NEW_NAME/g" >&3
}

function blackcircle()
{
    circle $1 $2 $3 '#000000'
}
