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
    doit = ["DOIN IT LIVE! YEAH!","Do it! Doitdoitdoitdoitdoit!", "Get it done! WOOO!!","J-F-D-I! J-F-D-I! J-F-D-I!"] 
    msg.send msg.random doit