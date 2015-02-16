angular.module('desk.controllers').
controller 'ContentController', ($scope, NavigationFactory)->

  class ContentController

    constructor: ->
      #console.log 'ContentController constructor'
      $scope.$on 'navigate', (event,args)->
        console.log args
        console.log args.rc
        $scope.contentHTML = "#{args.rc}"

    init: ->
      #console.log 'ContentController init'
      NavigationFactory.init()
      NavigationFactory.setContent @initialContent

  new ContentController
