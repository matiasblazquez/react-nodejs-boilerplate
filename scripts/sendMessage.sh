#/bin/bash

function message {

curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World!"}' https://hooks.slack.com/services/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
}

message