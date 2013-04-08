$ ->
  $('#groups li :checkbox').click ->
    $(".release.#{$(this).val()}").toggle $(this).is(':checked')
