var express = require('express')
var app = express()

const port = process.env.PORT || 3000

app.use(express.static(__dirname));
app.set('views', __dirname)
app.engine('html', require('ejs').renderFile)
app.set('view engine', 'html')

app.get('/', (req, res) => {
  console.log('game started')
  res.render('index.html')
})

app.listen(port, () => {
  console.log('Listening in port', port)
})
