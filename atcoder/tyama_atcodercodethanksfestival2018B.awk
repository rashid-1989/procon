#!/usr/bin/awk -f
$0=(a=3*$1-$2)<0||(b=3*$2-$1)<0||a%8||b%8?"No":"Yes"
