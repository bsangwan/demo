#!/bin/sh 
cd /Users/qk/mygithub/demo/7_nari
mkdocs build
rm -rf /Users/qk/Sites/site
cp -R site /Users/qk/Sites/site