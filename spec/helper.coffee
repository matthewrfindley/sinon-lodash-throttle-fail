chai = require 'chai'
sinonChai = require 'sinon-chai'

chai.use sinonChai
chai.should()

global.sinon = require 'sinon'
