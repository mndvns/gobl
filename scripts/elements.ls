a ?= {}

a.register = ->
  Polymer.register &0, a.scripts[&1]

a.scripts =
  "pg-rock" :
    value: 100

