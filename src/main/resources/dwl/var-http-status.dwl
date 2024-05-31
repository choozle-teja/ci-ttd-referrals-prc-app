%dw 2.0
output application/json
---
{
	"error": ((error.errorType.namespace default "") ++ ":" ++ (error.errorType.identifier default "")),
	"app": "ci-ttd-referrals-prc-app",
	"timestamp": now() as String,
	"link" : "https://anypoint.mulesoft.com/cloudhub/#/console/applications/runtimeFabric/0d1f61ce-ba8f-42de-a367-252c144fd25c/log"
}