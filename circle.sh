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

function orangecircle()
{
    circle $1 $2 $3 '#ffa500'
}

function redcircle()
{
    circle $1 $2 $3 '#ff0000'
}

function bluecircle()
{
    circle $1 $2 $3 '#0000ff'
}
