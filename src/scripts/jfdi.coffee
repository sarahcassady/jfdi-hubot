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

module.exports = (robot) ->

  robot.hear /jfdi?\b/i, (msg) ->
  lulz = [
  	'DOIN IT LIVE! YEAH!', 
  	'Do it! Doitdoitdoitdoitdoit!', 
  	'Get \'er done ;)'
  ]
  #msg.send msg.random lulz
  msg.send "DOIN IT LIVE! YEAH!"
