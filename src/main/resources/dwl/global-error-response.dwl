%dw 2.0
output application/json
var errorDes = if ( error.errorMessage.payload.errors[0] !=null ) error.errorMessage.payload.errors[0] else error.errorMessage.payload
---
{
	api: Mule::p('application.name') as String,
	env: Mule::p('mule.env') as String,
	response: 'Error',
	statusCode: vars.httpStatus as Number default 500,
	timestamp: now() as String,
	correlationId: correlationId,
	errorType: ((error.errorType.namespace default "") ++ ":" ++ (error.errorType.identifier default "")),
	errorMessage: errorDes default error.description
}