$(document).ready(function(){
  $('#background_button').click(function(){
    alert('background button clicked!');
    $('body').toggleClass('background-green');
  });
  $('button.slide').click(function(){
    $('#toggle').slideToggle();
  });
});