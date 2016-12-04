const express = require('express')
const path = require('path')
const serveStatic = require('serve-static')
const bodyParser = require('body-parser')
const index = require('./routes/index')
const port = process.env.PORT || 3000 

const app = express()

app.set('views', path.join(__dirname, 'views'))
app.set('view engine', 'jade')
app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: false }))


app.use('/',index)


const publicPath = path.join(__dirname, 'public')
app.use(serveStatic(publicPath))


app.listen(port)
console.log("端口为" + port)


module.exports = app  