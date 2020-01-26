FROM node:slim
WORKDIR ~
EXPOSE 3000
RUN echo "const http=require('http');const hostname ='172.99.0.99'; let port; if (process.argv.length===2) {port=3000;} else if (Number(process.argv[2])<9999) {port=Math.floor(Number(process.argv[2]));}; const server=http.createServer((req, res) => {res.statusCode=200; res.setHeader('Content-Type', 'text/plain'); console.log(req.connection.remoteAddress); res.end(req.connection.remoteAddress);}); server.listen(port, hostname, () => {console.log('Server running at http://' + hostname + ':' + port);});" > ip.js
CMD ["node", "ip.js"]