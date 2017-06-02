function arc()
{
    local originx=$1 originy=$2 width=$3 height=$4
    local halfwidth=`echo "scale=30;$width/2" | bc`
    bumpname
    cat arc | sed -e "s/HALFWIDTH/$halfwidth/g;s/XONE/$originx/g;s/YONE/$originy/g;s/WIDTH/$width/g;s/HEIGHT/$height/g;s/NAME/$NEW_NAME/g" >&3
}
