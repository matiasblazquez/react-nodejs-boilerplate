#/bin/bash

if [ "$TRAVIS_BRANCH" == "DEVOP-222" ]; then
    GIT=`which git`

    if [ "x$1" = "x" -o "x$2" = "x" ];then
    echo "use: $0 <git_repository_to_clone> <directory>"
    exit 1
    fi

    if [ "x$GIT" = "x" ];then
    echo "No git command found. install it"
    fi

    function clone {

    message=$GIT log master..DEVOP-1364 --pretty=format:"%h%x09%an%x09%ad%x09%s"  --merges

    echo "Im inside $2 now I can run the script"

    curl -X POST -H 'Content-type: application/json' --data "{'text':'${message}'}" https://hooks.slack.com/services/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
    
    # for remote in `$GIT branch -r | grep -v \>`; do
    #    $GIT branch --track ${remote#origin/} $remote;
    # done
    }

    echo "cloning repository into ... $2"
    clone $1 $2
fi

