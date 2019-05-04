const express = require('express')
const app = express()

const { PORT } = process.env

app.get('/', function(req, res) {
  res.send('Hello World!')
})

// PORT is passed by heroku
const server = app.listen(PORT, function() {
  const port = server.address().port
  console.log(`App running on http://0.0.0.0:${port}`)
})
