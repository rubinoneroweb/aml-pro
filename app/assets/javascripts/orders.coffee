# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#order_date_cons, #order_date_ric').fdatetimepicker
    language: 'it'
    format: 'dd/mm/yyyy'
    disableDblClickSelection: true
    pickTime: false
  return