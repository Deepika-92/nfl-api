const teams = require('../teams')

const getAllTeams = (request, response) => {
  return response.send(teams)
}

const getTeamById = (request, response) => {
  const { id } = request.params
  const foundTeam = teams.filter((team) => {
    teams.id === id
})
return response.send(foundTeam)
}
const saveNewTeam = (request, response) => {
  const { id, location, mascot, abbreviation, conference, division } = request.body

  if (!id || !location || !mascot || !abbreviation || !conference || !division) {
    return response.status(400).send('The following fields are required: id, location, mascot, abbreviation, conference, division')
  }

  const newTeam = { name, realname, firstappearance, slug }

  teams.push(newTeam)

  return response.status(201).send(newTeam)
}

module.exports = { getAllTeams, getTeamById, saveNewTeam }



