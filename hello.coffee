# Description:
#   Hubot, be polite and say hello.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   Hello or Good Day make hubot say hello to you back
#   Good Morning makes hubot say good morning to you back
#
# Author:
# sarahcassady
# adapted from hubot_scripts hello.coffee

hellos = [
    "Well hello there, %",
    "Hello to you too, %!",
    "Top of the day to you, %!",
    "Good day, %",
    "Good 'aye!, %",
    "%: Greetings! Having a productive day?",
    "%: Hey! Have you been JFDI today?",
    "Hi %! What's motivating you today?"
]
mornings = [
    "Good morning, %",
    "Good morning to you too, %",
    "Good day, %",
    "Good 'aye, %!",
    "Top of the morning to you, %!",
    "%: Morning! Ready for a productive day?",
    "%: Hey! Are you ready to JFDI today?",
    "%: Good morning to you too! What are you going to accomplish today?",
    "Good morning, %! What did you accomplish yesterday?",
    "%: Hey! You ready to JFDI today?"
]
module.exports = (robot) ->
    robot.hear /(hello|hi |good( [d'])?ay(e)?)/i, (msg) ->
        hello = msg.random hellos
        msg.send hello.replace "%", msg.message.user.name

    robot.hear /(^(good )?m(a|o)rnin(g)?)/i, (msg) ->
        hello = msg.random mornings
        msg.send hello.replace "%", msg.message.user.name
