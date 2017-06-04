# This function draws an arc.
# The resulting arc will be a horizontally symmetrical arc.
# We will use it here to make a "smile" shape.
# It requires 4 argments supplied after the call:
#	arc 1 2 3 4
# These arguments are as follows:
#	The x-coordinate of position at which the drawing of the arc should begin.
#	The y-coordinate of position at which the drawing of the arc should begin.
#	The width the arc should span.
#	The height the arc should span.  Positive height makes a smile.  Negative height makes a frown!


function arc()
{
    local originx=$1 originy=$2 width=$3 height=$4
    local halfwidth=`echo "scale=30;$width/2" | bc`
    bumpname
    cat arc | sed -e "s/HALFWIDTH/$halfwidth/g;s/XONE/$originx/g;s/YONE/$originy/g;s/WIDTH/$width/g;s/HEIGHT/$height/g;s/NAME/$NEW_NAME/g" >&3
}
