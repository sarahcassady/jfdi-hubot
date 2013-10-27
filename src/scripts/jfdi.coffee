# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   sarahcassady

  r#obot.hear /jfdi/i, (msg) ->
    #msg.send "You keep using that word. I do not think it means what you think it means."

module.exports = (robot) ->

  robot.hear /jfdi/i, (msg) ->
  lulz = [
  	'DOIN IT LIVE! YEAH!', 
  	'Do it! Doitdoitdoitdoitdoit!', 
  	'Get \'er done ;)'
  ]
  msg.send msg.random lulz
