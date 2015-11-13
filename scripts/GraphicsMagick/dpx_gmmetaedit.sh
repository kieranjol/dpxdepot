#!/bin/bash
  
  for file in *.dpx
  do
    outfile=`basename $file revised`.dpx
    echo convert "'$file'" -define dpx:file.copyright=,DPX:file.project.name=,DPX:file.creator=,dpx:mp.frame.rate= "'$outfile'"
  done | gm batch -echo on -feedback on -