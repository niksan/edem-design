//= require jquery
//= require jquery_ujs
//= require ../../../vendor/assets/javascripts/bootstrap.min
//= require_tree ../../../vendor/assets/javascripts/fancybox
//= require ../../../vendor/assets/javascripts/isotope.pkgd.min
//= require ckeditor/init
//= require_tree .
//= require gritter
//= require_self

jQuery.fn.addActiveClassOnHover = (selector) ->
  $(selector).hover(
    -> $(this).addClass('active'),
    -> $(this).removeClass('active')
  )

jQuery.fn.goToChildUrl = (selector) ->
  $(selector).click( ->
    window.location = $(this).find("a").attr("href")
    return false
  )

jQuery.fn.gritterNotice = (title='Уведомление', text='что-то произошло', image='/images/gritter/notice.png', time=3000) ->
  $.gritter.add({
    title: title,
    text: text,
    image: image,
    sticky: false,
    time: time
  })


$(document).ready( ->
  $('#second_menu .item img').wrap('<div class="wrap" />')
  $('body').addActiveClassOnHover('#second_menu .item')
  $('body').goToChildUrl('#second_menu .item')
  $('body').addActiveClassOnHover('#news_list .news')
  $('body').goToChildUrl('#news_list .news')
  $('body').goToChildUrl('#special_offer .item')
  $('a.fancybox').fancybox({
    maxWidth: 800,
    maxHeight: 600,
    fitToView: false,
    width: '70%',
    height: '70%',
    autoSize: false,
    closeClick: false,
    openEffect: 'elastic',
    closeEffect: 'elastic',
    prevEffect: 'fade',
    nextEffect: 'fade',
  })
  $('a.tulp').click ->
    item = $(@).parent().parent().find('h3').text()
    $('#call_request_item').val(item)
    $('#modal1').modal('show')
    false
  $('#modal1_form').submit (event)->
    $('#modal1').modal('hide')
    window.location.href = 'http://edem-design.ru/articles/61-spasibo-za-zakaz#second_menu'
)
