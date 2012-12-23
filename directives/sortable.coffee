
module = angular.module 'oblique.directives', []

module.directive 'sortable', -> (
  linkFn = (scope, element, attrs) ->

    element.bind 'click', (event) -> 
      element.css 'background-image', 'url("' + attrs.icon + '")'

      ''' Call the requested function '''
      callback = scope.$eval attrs.sortable
      callback attrs.sortBy, attrs.invert, -> ( element.css 'background-image', "" )

      attrs.invert = !attrs.invert

  {
    link: linkFn,
    restrict: 'A',
    link: linkFn,
    scope: true,
  }
  
)

