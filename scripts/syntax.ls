a ?= {}

custom = $ '#xxx' .get 0
  .binding-delegate = new Expression-syntax!

p = -> 
  console.log ""
  it.for-each -> console.log it.0, it.1

custom.get-binding = (model, path, name, node)->
  p [
    * "MODEL", model
    * "PATH", path
    * "NAME", name
    * "NODE", node
  ]

  # m = path.match(/2x:(.*)/)
  m = path.match(/(.*)\*(.*)/)
  if not m then return
  console.log "GOT HERE"

  path = m[2].trim!
  console.log "!!!!!!!!!!", m
  binding = new CompoundBinding((values, b)->
    console.log '@@@@@@@@@@@', values, b
    values['value'] * values['rabbit']
  )

  binding.bind 'value', model, path
  binding

# custom.get-instance-model = (template, model)->
#   do ->
#     console.log ""
#     p [
#       * "TEMPLATE", template
#       * "MODEL", model
#     ]
# 
#   # window.t = template
#   # t.model =
#   #   value: 4

do ->
  t = document.get-element-by-id('xxx')
  console.log "got TEMPLATE", t
  t.model =
    value: 4
    rabbit: 100
    hide: false


console.log "HEY", custom

