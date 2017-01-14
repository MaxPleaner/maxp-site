$ ->
  $sectionBtns = $ ".section-btn"

  window.hiddenSections = []
  window.visibleSections = []
  window.hideAll = ->
    visibleSections.forEach ($nodes) ->
      $nodes.removeClass "visible"
      $nodes.addClass "hidden"
      hiddenSections.push $nodes
    window.visibleSections = []

  window.setFragment = (pageId) ->
    location.hash = pageId

  window.routeFromFragment = ->
    fragment = location.hash.replace "#", ""
    if fragment.length > 0
      $(".section-btn.#{fragment}").trigger "click"

  $.each $sectionBtns, (idx, el) ->
    $el = $ el
    targetSelector = $el.attr "target"
    $target = $ targetSelector
    hiddenSections.push $target
    $el.on "click", (e) ->
      hideAll()
      visibleSections.push $target
      $target.removeClass "hidden"
      $target.addClass "visible"
      setFragment $target.attr "id"
      window.scrollTo(0,0)

  routeFromFragment()


