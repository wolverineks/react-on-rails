# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(".table").on "ajax:beforeSend", ".submit", (e, data, status, xhr) ->
    console.log("button clicked!")
    date = $(this).closest("tr").find(".date").attr("value")
    title = $(this).closest("tr").find(".title").attr("value")
    amount = $(this).closest("tr").find(".amount").attr("value")
