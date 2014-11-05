//= require jquery
//= require jquery_ujs
//= require_tree ../../../vendor/assets/javascripts/fancybox
//= require ../../../vendor/assets/javascripts/isotope.pkgd.min
//= require_tree .
//= require gritter
//= require ckeditor/override
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
)
