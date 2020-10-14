#/bin/bash

function message {

curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World!"}' https://hooks.slack.com/services/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
}

message