# Function to draw a line.
#	The created line is a "diagonal" across a box defined by width and height.
#	Requires 4 arguments:
#		x-coordinate specifying the starting location of the line.
#		y-coordinate specifying the starting location of the line.
#		distance traveled in the x-dimension to the end point
#		distance traveled in the y-dimension to the end point

function line()
{
    local originx=$1 originy=$2 width=$3 height=$4
    bumpname
    cat line | sed -e "s/XONE/$originx/g;s/YONE/$originy/g;s/XTWO/$width/g;s/YTWO/$height/g;s/NAME/$NEW_NAME/g" >&3
}
