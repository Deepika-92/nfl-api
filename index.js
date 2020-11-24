const express = require('express')
const bodyParser = require('body-parser')

const { getAllTeams, getTeamById, saveNewTeam } = require('./controllers/teams')
const app = express()

app.get('/', getAllTeams)

app.get('/:id', getTeamById)
app.post('/', bodyParser.json(), saveNewTeam)


app.listen(1441, () => {
  console.log('listening on port 1441...') // eslint-disable-line no-console
})
