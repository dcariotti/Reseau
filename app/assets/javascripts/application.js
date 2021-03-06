// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .
function report(id) {
  $('.tsb_'+id).toggle();
}

function editComment(id) {
  $('#e_c_'+id).toggle();
}

$(document).on('turbolinks:load', function() {
  $('.e_post').click(function(){
    $('html,body').animate({ scrollTop: 0 }, 'slow');
    $('.edit_post').slideToggle();
  });
  $('.t_segn').click(function(){
    $('.t_segn_body').toggle();
  });
  $("#wmd-input-c").keyup(function(){
    if($("#wmd-input-c").val().length > 0) {
      $(this).css("height", "150px");
    } else {
      $(this).css("height", "16px");
    }
  });

  $('pre code').each(function(i, block) {
    hljs.highlightBlock(block);
  });
  $('.expand_menu').hover(function(){
    $('.menu').toggle();
  });
  $('.menu').hover(function(){
    $(this).toggle();
  });

  $('.user_ex_menu').hover(function(){
    $('.menu_user').toggle();
  });
  $('.menu_user').hover(function(){
    $(this).toggle();
  });

  $('.butt_log').click(function(){
    $('.log').fadeIn();
  });
  $('._closex').click(function(){
    $('.log').hide();
  });
  $('.switchLogin').click(function(){
    $('.signup').fadeOut();
    $('.signin').delay(1000).fadeIn();
  });
  $('.switchSignup').click(function(){
    $('.signin').fadeOut();
    $('.signup').delay(1000).fadeIn();
  });
});
