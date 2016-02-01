'use strict';

const http = require('http');
const url = require('url');

const port = 3000;

const respond = (statusCode, msg, pathname, res) => {
  res.writeHead(statusCode, {'content-type': 'text/plain'});
  res.end(msg);
  console.log(pathname, '-', statusCode, msg);
}

http.createServer((req, res) => {

  const parsedRequest = url.parse(req.url, true);
  if (parsedRequest.pathname !== '/login')
    respond(404, 'Not Found', parsedRequest.path, res);

  const queryString = parsedRequest.query;
  if (queryString.username && queryString.password)
    respond(200, 'Welcome, ' + queryString.username + '!', parsedRequest.path, res);
  else
    respond(403, 'Forbidden', parsedRequest.path, res);
}).listen(port, () => {
  console.log(`Server running at http://0.0.0.0:${port}/`);
});
