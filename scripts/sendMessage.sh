#/bin/bash

GIT=`which git`

if [ "x$GIT" = "x" ];then
  echo "No git command found. install it"
fi

function message {
  
  $GIT log master..DEVOP-222 --pretty=format:"%h%x09%an%x09%ad%x09%s"  --merges

}

echo "listing changes ..."
clone