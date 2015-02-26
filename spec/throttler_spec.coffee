Throttler = require '../src/throttler'
lodash = require 'lodash'

describe 'Throttler', ->

  beforeEach ->
    @clock = sinon.useFakeTimers()

    @callback = sinon.stub()

    @subject = new Throttler(@callback, 500, lodash.runInContext())

  afterEach ->
    @clock.restore()

  it 'should call the callback when using the trailing option', ->
    @subject.trailing()
    @subject.trailing()
    @subject.trailing()
    @subject.trailing()
    @subject.trailing()
    @clock.tick(501)
    @callback.should.have.been.calledOnce


  it 'should call the callback once when using the leading option', ->
    @subject.leading()
    @subject.leading()
    @subject.leading()
    @subject.leading()
    @clock.tick(501)
    @callback.should.have.been.calledOnce
