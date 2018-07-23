# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
slideIndex = 1

plusDivs = (n) ->
  showDivs slideIndex += n
  return

gotoDivs = (n) ->
  showDivs slideIndex = n
  return

showDivs = (n) ->
  i = undefined
  x = document.getElementsByClassName('slides')
  if n > x.length
    slideIndex = 1
  if n < 1
    slideIndex = x.length
  i = 0
  while i < x.length
    x[i].style.display = 'none'
    i++
  x[slideIndex - 1].style.display = 'block'
  return

showDivs slideIndex