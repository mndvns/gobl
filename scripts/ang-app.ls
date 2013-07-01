{map} = require 'prelude-ls'

app = angular.module "app", ["ui"]

keys = [
  * name: "top"
    keys: <[ q w e r t y u i o p ]>
  * name: "home"
    keys: <[ a s d f g h j k l ]>
  * name: "bottom"
    keys: <[ z x c v b n m ]>
]

KeyboardCtrl = ($scope) ->
  $scope.rows = keys
  $scope.keypress_cb = (v)->
    v.preventDefault!
    j = v.target.value
    console.log j

app.directive "textbox", ->
  restrict: \A
  scope:
    active: "@"
  link: (scope, element)->



