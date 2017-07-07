Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../src/source.coffee')

process.env.HUBOT_SOURCE_URL = "http://example.com"

describe 'source', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'responds to where\'s the source', ->
    @room.user.say('alice', '@hubot where\'s the source').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot where\'s the source']
        ['hubot', '@alice http://example.com']
      ]

  it 'responds when there\'s a question mark', ->
    @room.user.say('alice', '@hubot where\'s the source?').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot where\'s the source?']
        ['hubot', '@alice http://example.com']
      ]

  it 'responds without a contraction', ->
    @room.user.say('alice', '@hubot where is the source').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot where is the source']
        ['hubot', '@alice http://example.com']
      ]

  it 'responds to "source code"', ->
    @room.user.say('alice', '@hubot where is the source code').then =>
      expect(@room.messages).to.eql [
        ['alice', '@hubot where is the source code']
        ['hubot', '@alice http://example.com']
      ]
