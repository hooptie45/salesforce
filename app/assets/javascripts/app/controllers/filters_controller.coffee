angular.module('desk.controllers').
controller 'FiltersController', (FiltersFactory)->

  class FiltersController

    constructor: ->
      console.log 'filter controller'
      @data = FiltersFactory.data

    init: ->

  new FiltersController
