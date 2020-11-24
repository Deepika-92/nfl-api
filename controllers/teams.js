const models = require('../models')
const getAllTeams = async (request, response) => {
  try {
    const teams = await models.teams.findAll({
      attributes: ['id', 'location', 'mascot', 'abbreviation', 'conference', 'division']
    })

    return response.send(teams)
  } catch (error) {
    return response.status(404).send('Sorry teams could not found')
  }
}

const getTeamById = async (request, response) => {
  try {
    const { id } = request.params
    const foundTeam = await models.teams.findOne({ where: { id } })

    return response.send(foundTeam)
  } catch (error) {
    return response.status(404).send('Sorry team by id could not found')
  }
}
const saveNewTeam = async (request, response) => {
  try {
    const {
      id, location, mascot, abbreviation, conference, division
    } = request.body

    if (!id || !location || !mascot || !abbreviation || !conference || !division) {
      return response.status(400)
    }

    const newTeam = await models.teams.create({
      id, location, mascot, abbreviation, conference, division
    })

    return response.status(201).send(newTeam)
  }

  catch (error) {
    return response.status(404).send('Sorry team could not be created')
  }
}

module.exports = { getAllTeams, getTeamById, saveNewTeam }



