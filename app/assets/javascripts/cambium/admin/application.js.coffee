#= require jquery
#= require jquery_ujs
#= require trumbowyg/trumbowyg
#= require mark_it_zero
#= require pickadate/picker
#= require pickadate/picker.date
#= require pickadate/picker.time
#= require underscore
#= require backbone
#= require_self
#= require_tree ./templates
#= require_tree ./views
#= require_tree ./routers

window.App =
  Collections: {}
  Routers: {}
  Views: {}

$ ->
  new App.Routers.Router

  # Enable pushState for compatible browsers
  enablePushState = true

  # Disable for older browsers
  pushState = !!(enablePushState && window.history && window.history.pushState)

  Backbone.history.start({ pushState: pushState })
