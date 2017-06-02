function circle()
{
    local radius=$1 vertical=$2 horizontal=$3
    bumpname
    cat circle | sed -e "s/RADIUS/$radius/g;s/VERTICAL/$vertical/g;s/HORIZONTAL/$horizontal/g;s/NAME/$NEW_NAME/g" >&3
}
