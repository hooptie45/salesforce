angular.module('desk.factories').
factory 'FiltersFactory',($rootScope, $http)->

  class FiltersFactory

    render: =>
      $http.get('filters.json').success (filters)=>
        $rootScope.filters = filters

    constructor: ->
      $rootScope.columns = [0..2]
      $rootScope.nColumns = $rootScope.columns.length
      @render()

    init: ->
      #console.log 'FiltersFactory init'

    setContent: (rController=@initialRC, rAction=@initialRA)->
      #console.log 'FiltersFactory setContent'

  new FiltersFactory
  

