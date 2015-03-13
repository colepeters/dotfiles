# scb
# Uses sass-convert to convert multiple files from sass to scss syntax
# Pass a directory as an argument when calling the function, e.g.:
# scb .
# or
# scb ~/sites/foo
function scb {
  for file in $(find $1 -type f -name "*.sass");
  do
    sass-convert $file ${file/.sass/.scss};
    rm -f $file;
    echo "✔" $file "⇢ SCSS";
  done  
}
