express = require 'express'
set = require 'indie-set'

app = express()
app.engine 'html', set.__express
app.set 'view engine', 'html'
app.use express.static('views')

data = {
	people: [
			{ name: 'Aral', homepage: 'https://aralbalkan.com', isSpeaker: yes }
		,	{ name: 'Laura', homepage: 'http://laurakalbag.com' , isSpeaker: yes }
		, 	{ name: 'Jo', homepage: 'http://www.jo-porter.com', isSpeaker: yes }
		,	{ name: 'Osky', homepage: 'http://twitter.com/gigapup' }
	]
}

app.get '/', (request, response) ->
	response.render 'hello-badge', data

app.listen 3000

console.log '\nServer running. Go to http://localhost:3000 to see the example and http://localhost:3000/hello-badge.html to see the template.\n'