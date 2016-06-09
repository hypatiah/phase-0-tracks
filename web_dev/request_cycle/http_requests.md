#HTTP Research Questions and Answers

*What are some common HTTP status codes?*
HTTP status codes are sent by the server to explain how the transaction was handled by the server. 
Some common ones are:
* 200: OK. Request succeeded
* 300: Multiple choices. Requested resource has multiple choices that can't be resolved into one (ex: multiple index.html pages depending on diff languages)
* 401: Unauthorized. Request requires user authentication. Response 
* 403: Forbidden. Server understood request but is refusing to fulfill it. Request should not be repeated as authorization won't help. 
* 404: Not found. Server hasn't found anything matching the request.
* 500: Internal server error. Server encountered unexpected condition that prevented it from fulfilling request.
* 550: Permission denied. Server encountered unexpected condition that prevented it from fulfilling the request.


*What is the difference between a GET request and a POST request?* 
Some differences:
* GET requests can be cached (meaning can store recently used information so that it can be quickly accessed at a later time), POST requests cannot be cached.
* GET requests remain in browser history and can be bookmarked, POST req can't.
* GET requests have data length restrictions, POST requests don't have restrictions on length.
*When might each be used?*
GET requests data from a specified resource, whereas POST submits data to be processed to specified resource.

*Bonus question: What is a cookie? How does it relate to HTTP requests?*
A cookie is a small plain text file with no executable code. Cookies are stored by a browser on the user's machine. 
A web page/serve instructs a browser to store information on cookies and send it back with each request based on a set of rules. The server can then use this info to identify users. 
Ex: a site requiring a login will set a cookie once your credentials have been verified, and then the user can navigate the site as long as the cookie is validated and present. 

Cookies relate to HTTP requests because a server sends an HTTP header called 'Set-Cookie' to create a cookie. 
If a cookie is present and the optional rules are satisfied, the cookie value is sent to the server with each request following, where the cookie value is stored in an HTTP header called 'Cookie'. The header simply contains the cookie value.