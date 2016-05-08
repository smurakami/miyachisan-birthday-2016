class Main
  constructor: ->
    @initBackground()
    @initTop()
  initTop: ->
    interval_sec = 0.5
    interval_count = 5

    counter = 0
    setInterval =>
      counter += 1
      if counter % interval_count == 0
        $('#top img.scroll_down').css 'opacity', '0'
      else 
        $('#top img.scroll_down').css 'opacity', '1'
    , interval_sec * 1000 / interval_count
  initBackground: ->
    rotation = 0
    setInterval =>
      rotation += 1
      $('#base img.rolling').css 'transform', "rotate(#{rotation}deg)"
    , 33


$ -> 
  new Main