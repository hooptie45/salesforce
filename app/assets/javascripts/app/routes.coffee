angular.module('desk').
config ['$routeProvider', (routeProvider)->
  routeProvider
    .when '/filters',
      templateUrl: 'templates/filters.html',
      controller: 'FiltersController as ctrlFilters'
    .when '/labels',
      templateUrl: 'templates/labels.html',
      controller: 'LabelsController as ctrlLabels'

]
