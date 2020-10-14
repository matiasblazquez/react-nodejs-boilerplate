#/bin/bash

# this script clones a repository, including all its remote branches
# Author: julianromera

GIT=`which git`

if [ "x$GIT" = "x" ];then
  echo "No git command found. install it"
fi

function clone {

  message=$GIT log master..DEVOP-222 --pretty=format:"%h%x09%an%x09%ad%x09%s"  --merges

  curl -X POST -H 'Content-type: application/json' --data "{'text':'${message}'}" https://hooks.slack.com/services/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
  
  # for remote in `$GIT branch -r | grep -v \>`; do
  #    $GIT branch --track ${remote#origin/} $remote;
  # done
}

clone