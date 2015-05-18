$(document).on 'ready page:load', ->
  
  segTrackLinkClicked = (href)->
    console.log "clicked a link"
    analytics.track href,
      href: href
  
  $('a').click ()->
    segTrackLinkClicked(this.href)