# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'page:change', ->
  calcular_total = () ->
    product_id = $('#sell_product_id').val()
    quantity = parseFloat($(".sell-quantity").val()) || 0.0
    console.log product_id
    $.getJSON "/products/#{product_id}.json", (data) ->
      price = (parseFloat(data.price) *quantity) || 0.0
      fee = (parseFloat(data.fee) * quantity) || 0.0
      $('.valor').text(price)
      $('.iva').text(fee)
      $('.iva-valor').text(price + fee)
      #console.log data.name


  $('.sell-quantity').keyup ->
    calcular_total()

  $('#sell-product_id').change ->
    calcular_total()

  calcular_total()
