source circle.sh
source line.sh

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
