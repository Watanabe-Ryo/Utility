#!/bin/zsh
declare -i ALL_REMAIN_TODO
ALL_REMAIN_TODO=0
DISP_WORD="Remain ToDo in `date +%Y/%m/%d` : "
DISP_TODO=" ( "
cd ~/todo
for DIR in $( ls -F | grep / | awk -F"/" '{print $1}' ); do
    cd ~/todo/$DIR
    declare -i EACH_DATE_TODO
    EACH_DATE_TODO=0    
    for TODO in $( ls . ); do
        if [ -s $TODO ]; then
                ALL_REMAIN_TODO=`expr $ALL_REMAIN_TODO + 1`
                EACH_DATE_TODO=`expr $EACH_DATE_TODO + 1`
        fi
    done
    DISP_TODO=$DISP_TODO$DIR" -> "$EACH_DATE_TODO" , "
done
DISP_TODO=$DISP_TODO" )"
DISP_WORD=$DISP_WORD$ALL_REMAIN_TODO$DISP_TODO
echo $DISP_WORD
