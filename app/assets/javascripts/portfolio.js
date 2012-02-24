$(document).ready(function(){
  $('body').addActiveClassOnHover('#portfolios .item');
  $('body').goToChildUrl('#portfolios .item');
  $("#portfolio_items a").fancybox({
    'transitionIn'  : 'elastic',
    'transitionOut' : 'elastic',
    'speedIn'   : 600, 
    'speedOut'    : 200, 
    'overlayShow' : true,
    'titlePosition'  : 'over'
  });
});
