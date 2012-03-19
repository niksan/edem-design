//= require jquery
//= require jquery_ujs
//= require_tree ./fancybox
//= require_self

$(document).ready(function(){
  
  jQuery.fn.addActiveClassOnHover = function(selector) {
    $(selector).hover(
      function(){ $(this).addClass('active'); },
      function(){ $(this).removeClass('active'); }
    );
  }

  jQuery.fn.goToChildUrl = function(selector) {
    $(selector).click(function(){
      window.location = $(this).find("a").attr("href"); return false;
    });
  }

  jQuery.fn.gritterNotice = function(title, text, image, time) {
    if ( title === undefined ){ title = 'Уведомление' }
    if ( text === undefined ){ text = 'что-то произошло' }
    if ( image === undefined ){ image = '/images/gritter/notice.png' }
    if ( time === undefined ){ time = 3000 }
    $.gritter.add({
      title: title,
      text: text,
      image: image,
      sticky: false,
      time: time
    });
  };


  $('#second_menu .item img').wrap('<div class="wrap" />');
  $('body').addActiveClassOnHover('#second_menu .item');
  $('body').goToChildUrl('#second_menu .item');
  $('body').addActiveClassOnHover('#news_list .news');
  $('body').goToChildUrl('#news_list .news');
  $('body').goToChildUrl('#special_offer .item');
  $('a.fancybox').fancybox({
    'transitionIn'  : 'elastic',
    'transitionOut' : 'elastic',
    'speedIn'   : 600, 
    'speedOut'    : 200, 
    'overlayShow' : true,
    'titlePosition'  : 'over'
  });
});
