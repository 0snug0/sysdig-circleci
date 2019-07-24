#!/bin/bash
echo "<html>" > myapp/nginx/static-html-directory/index.html
echo "    <head>" >> myapp/nginx/static-html-directory/index.html
echo "        Hello from CircleCI Build" >> myapp/nginx/static-html-directory/index.html
echo "    </head>" >> myapp/nginx/static-html-directory/index.html
echo "    <body>" >> myapp/nginx/static-html-directory/index.html
echo "        Hello from CircleCI Build <br />" >> myapp/nginx/static-html-directory/index.html
echo "        <a href='https://circleci.com/gh/${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}''><img src='https://circleci.com/gh/${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME}.svg?style=svg'></a>" >> myapp/nginx/static-html-directory/index.html
echo "    </body>" >> myapp/nginx/static-html-directory/index.html
echo "<html>" >> myapp/nginx/static-html-directory/index.html