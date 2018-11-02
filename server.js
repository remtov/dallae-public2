const express = require('express');
const exp = express();

exp.use('/', (req, res, next) => {
    if (req.url == '/' || req.url.indexOf('/uri') == 0) {
        const uri = req.url.replace('/uri', '') + '.html';
        res.sendFile(uri, { root: __dirname + '/' });
    } else {
        res.writeHead(200, { 'Content-Type': 'text/html:charset=utf-8' });
        res.write('안녕<br>');
        res.end();
    }
    console.log(req.url);
});
exp.use('/', (req, res) => {
}
)

exp.listen(80, function () {
    console.log('serverlunningport:80');

})