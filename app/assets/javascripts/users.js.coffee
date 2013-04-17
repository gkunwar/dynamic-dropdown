# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $("#user_country_id").change ->
    country_id = $(this).val()
    $.ajax "get_states",
      data:
        country: country_id

      type: "POST"
      success: (result) ->
        jQuery("#versionsDiv").html result

      error: ->
        alert "Error"
