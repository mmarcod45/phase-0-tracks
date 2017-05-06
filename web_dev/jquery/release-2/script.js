
$(document).ready(function(){
    $("img").click(function(){
        $(this).hide();
    });
});




$(document).ready(function() {
   $('p').mouseenter(function() {
       $(this).animate({
           height: '+=10px'
       });
   });
   $('p').mouseleave(function() {
       $(this).animate({
           height: '-=10px'
       }); 
   });
   $('p').click(function() {
       $(this).toggle(1000);
   }); 
});
