###
This is part of the Oblique AngularJS components
available at http://github.com/cwacek/Oblique
###

module = angular.module 'oblique.filters', []

module.filter 'truncate', ->
  return (input, limit, threshold) ->
    if (!threshold || input.length > threshold )
      return input.substring(0,limit)
    return input



