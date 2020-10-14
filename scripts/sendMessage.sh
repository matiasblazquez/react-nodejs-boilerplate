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
    curl -X POST -H 'Content-type: application/json' --data "{'text':'Un mensaje mas completo'}" https://hooks.slack.com/services/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
    }

    clone
fi

