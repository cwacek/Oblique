
###
This is part of the Oblique AngularJS components
available at http://github.com/cwacek/Oblique
###

module = angular.module 'oblique.directives', []

module.directive 'autoComplete', ->
  settings =
    restrict: 'A'
    link: (scope, elem, attr) ->
      options =
        source: scope.$eval attr.autoComplete
        select: (event, ui) ->
          scope[attr.ngModel] = ui.item.value
      elem.autocomplete options
