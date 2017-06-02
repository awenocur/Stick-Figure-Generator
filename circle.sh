function circle()
{
    local radius=$1 vertical=$2 horizontal=$3
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
