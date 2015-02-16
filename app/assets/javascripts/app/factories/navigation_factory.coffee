angular.module('desk.factories').
factory 'NavigationFactory',($rootScope)->

  class NavigationFactory

    constructor: ->
      #console.log 'NavigationFactory constructor'
      @initialRC = 'filters'
      @initialRA = 'index'
      @currentRC = @currentRA = ''

    init: ->
      #console.log 'NavigationFactory init'
      @setContent @initialRC, @initialRA

    setContent: (rController=@initialRC, rAction=@initialRA)->
      #console.log 'NavigationFactory setContent'
      if rController != @currentRC || rAction != @currentRA
        $rootScope.$broadcast 'navigate', {rc: rController, ra: rAction}
        @currentRC = rController
        @currentRA = rAction

  new NavigationFactory
  

