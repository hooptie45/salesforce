angular.module('desk.controllers').
controller 'NavigationController', (NavigationFactory)->

  class NavigationController

    constructor: ->

    init: ->

    click: (rc, ra)->
      NavigationFactory.setContent(rc, ra)

  new NavigationController
