angular.module('desk.controllers').
controller 'NavigationController', ()->

  class NavigationController

    constructor: ->
      console.log 'NavigationController constructor()'

    init: ->
      console.log 'NavigationController init()'

  new NavigationController
