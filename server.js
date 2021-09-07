const express = require('express')
const path = require('path')

let app = express()

app.use(express.static('public'))

app.get('/page', (req, res) => {
    id = req.query.id
    res.sendFile(path.join(__dirname, `html/acceuil${id}.html`))
})

app.listen(3000, () => {
    console.log("Server started")
})


