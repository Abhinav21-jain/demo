#!/bin/bash -x
for file in `ls *.log.1`
do
        basename=`echo $file | awk -F. '{print $1}'`
	extension=`echo $file | awk -F. '{print $2}'`
	d=`date +%d%m%y`
	newfile=${basename}-${d}.${extension}
	mv $file $newfile
done
