/* global $ */
$(document).ready(function(){
    
    $('#prototype').click(function(e){
        e.preventDefault();
        $('#contact, #about').removeClass('active');
        $('#prototype').addClass('active');
        $('.contact, .about').addClass('hidden');
        $('.prototype').removeClass('hidden');
    });
    
    $('#about').click(function(e){
        e.preventDefault();
        $('#about').addClass('active');
        $('#prototype, #contact').removeClass('active');
        $('.about').removeClass('hidden');
        $('.prototype, .contact').addClass('hidden');
    });
    
    $('#contact').click(function(e){
        e.preventDefault();
        $('#contact').addClass('active');
        $('#prototype, #about').removeClass('active');
        $('.contact').removeClass('hidden');
        $('.about, .prototype').addClass('hidden');
    });   
});