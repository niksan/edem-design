$(document).ready( ->
  $('body').addActiveClassOnHover('#portfolios .item')
  $('body').goToChildUrl('#portfolios .item')
  $container = $('#portfolios').isotope()
  $('#filters a').click( ->
    $('#filters a.active').removeClass('active')
    $(this).addClass('active')
    filterValue = $(this).attr('data-filter')
    $container.isotope({ filter: filterValue })
    false
  )
)
