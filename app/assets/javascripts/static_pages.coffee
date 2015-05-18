# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready page:load', ->

  that = this

  # toggle more/less links
  
  # link format:
  # <a class="toggle-more-less more-link-cloud-intro" data-toggle="collapse" href="#more-content-cloud-intro">
  
  # link content format:
  # <div class="collapse" id="more-content-cloud-intro">
  # <p>Cum sociis natoque penatibus et magnis </p>
  this.getMoreLessSelector = (moreLessLink) ->
    linkClasses = moreLessLink.className
    linkClassList = linkClasses.split(/\s+/)
    linkClassStr =linkClassList[1]
    linkClassSelector = "." + linkClassStr

  $('.hidden').removeClass('hidden').hide()  
  $('.toggle-more-less').click ()->
    # $(".featurette-image").toggle()
    thisClassSelector = that.getMoreLessSelector(this)
    $(thisClassSelector).each (index, item)->
      $(item).find('span').each ()->
        $(this).toggle()

  # Collapse nav menu items when clicked 
  $('.nav .dropdown-menu li, .collapse-on-click').click ()->
    $('.navbar-collapse').collapse('hide')

  # Collapse nav menu but don't go to link
  $('.collapse-on-click-ignore-link').click (e)->
    e.preventDefault()
    # $('.navbar-collapse').collapse('hide')
