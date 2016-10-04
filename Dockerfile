FROM node:argon
EXPOSE 80
CMD ["node", "-e", "require('http').createServer((q,s)=>{s.end(q.headers['i'])}).listen(80)"]
