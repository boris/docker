var http = require("http");
const os = require("os");

http.createServer(function (request, response) {

   response.writeHead(200, {'Content-Type': 'text/plain'});
   
   response.end('Hostname: ' + os.hostname + '\n');
}).listen(8081);

