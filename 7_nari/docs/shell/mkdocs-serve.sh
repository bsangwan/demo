#!/bin/sh 
cd /Users/qk/mygithub/demo/7_nari
mkdocs build
rm -rf /Users/qk/Sites/site
cp -R site /Users/qk/Sites/site
zip -r site.zip /Users/qk/mygithub/demo/7_nari/site
rm -rf /Users/qk/Sites/site.zip
cp -R site.zip /Users/qk/Sites/site.zip