//dependencies

const express = require('express');
const cors = require('cors');


//config
const app = express();

//middleware

app.use(cors());
app.use(express.json());

//routes
app.get('/', (request, response) => {
    response.send('Vandhana is copying Florence Code')
})

app.get('*', (request, response) => {
    response.status(404).send('Page Not Found')
})

module.exports = app;