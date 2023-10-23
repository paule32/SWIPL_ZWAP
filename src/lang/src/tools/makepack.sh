#!/bin/bash
# -----------------------------------------------------------
# (c) 2023 by paule32 - Jens Kallup - non-profit Software.
# all rights reserved.
#
# This script convert ResBuilder v1.0 output files into read-
# able package files.
#
# WARNING: Dev-Tool !
# -----------------------------------------------------------
printf "please wait, this can take awhile...\n"
output="ResPackage.pas"

# ----------------------------------------------
# please be fair, and use code of conduct codex:
# ----------------------------------------------

printf "// ----------------------------------------------\n"  > ${output}.tmp
printf "// THIS FILE IS CREATED AUTOMATICALLY\n"             >> ${output}.tmp
printf "// (c) 2023 ResBuilder v1.0\n"                       >> ${output}.tmp
printf "// by paule32 - Jens Kallup - non-profit Software\n" >> ${output}.tmp
printf "// ----------------------------------------------\n" >> ${output}.tmp
printf "unit ResourceFile;\n" >> ${output}.tmp
printf "interface\n"          >> ${output}.tmp
printf "uses\n  "             >> ${output}.tmp

counter=1
wwrap=1
# ---------------------------------------
# change unit name ...
# ---------------------------------------
for file in *.pas; do
  new_line_str="unit RF_${counter};"
  sed "7s/.*/${new_line_str}/" ${file} > ${file}.tmp
  mv ${file}.tmp ${file}
  ((counter++))
done
counter=1
# ---------------------------------------
# print "uses" files ...
# ---------------------------------------
for file in *.pas; do
  new_name="RF_${counter}"
  len=$(expr ${#new_name} + ${wwrap} + 1)
  printf "${new_name}, " >> ${output}.tmp
  wwrap=$(expr ${wwrap} + ${len})
  if [ ${wwrap} -gt 400 ]; then
    wwrap=1
    printf "\n  " >> ${output}.tmp
  fi
  mv ${file} ${new_name}.pas
  ((counter++))
done

printf ";\n  // you have to remove the last comma !\n\n" >> ${output}.tmp
printf "implementation\n" >> ${output}.tmp
printf "end.\n" >> ${output}.tmp

# ---------------------------------------
# after all, write the finaly file ...
# ---------------------------------------
mv ${output}.tmp ${output}

printf "done.\n"