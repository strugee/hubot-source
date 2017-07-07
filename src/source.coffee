# Description
#   "hubot: where's the source?"
#
# Configuration:
#   HUBOT_SOURCE_URL
#
# Commands:
#   hubot where's the source? - replies with the URL for my source code
#
# Author:
#   AJ Jordan <alex@strugee.net>

module.exports = (robot) ->
  robot.respond /(?:where's|where is) the source\??/i, (res) ->
    res.reply process.env.HUBOT_SOURCE_URL
