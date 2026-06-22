@echo off
echo Starting Interview Practice Server...
echo.
echo Access from your phone at:
echo http://192.168.0.101:8080
echo.
echo Press Ctrl+C to stop
echo.
cd /d "%~dp0"
node -e "var h=require('http'),f=require('fs'),p=require('path');h.createServer((r,s)=>{var u=r.url.split('?')[0];if(u=='/')u='/interview-practice.html';if(u=='/quiz')u='/main quiz.html';var t=p.join(__dirname,u);f.readFile(t,(e,d)=>{if(e){s.writeHead(404);s.end('Not Found')}else{var x=p.extname(t);var m={'html':'text/html','js':'text/javascript','css':'text/css','m4a':'audio/x-m4a','mp3':'audio/mpeg','png':'image/png','jpg':'image/jpeg','pdf':'application/pdf'}[x.slice(1)]||'application/octet-stream';s.writeHead(200,{'Content-Type':m,'Accept-Ranges':'bytes'});s.end(d)}})}).listen(8080,'0.0.0.0');console.log('Server running at http://192.168.0.101:8080')
