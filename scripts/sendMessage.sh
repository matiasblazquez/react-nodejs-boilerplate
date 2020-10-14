#/bin/bash

function message {

  curl -X POST -H 'Content-type: application/json' --data "{'text':'Mas completo'}" https://hooks.slack.com/services/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
  
}

message