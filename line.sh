function line()
{
    local originx=$1 originy=$2 width=$3 height=$4
    bumpname
    cat line | sed -e "s/XONE/$originx/g;s/YONE/$originy/g;s/XTWO/$width/g;s/YTWO/$height/g;s/NAME/$NEW_NAME/g" >&3
}
