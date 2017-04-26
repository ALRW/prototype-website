/* global $ */
$(document).ready(function(){
    
    $('#prototype').click(function(e){
        e.preventDefault();
        $('#about').removeClass('active');
        $('#prototype').addClass('active');
        $('.about').addClass('hidden');
        $('.prototype').removeClass('hidden');
    });
    
    $('#about').click(function(e){
        e.preventDefault();
        $('#about').addClass('active');
        $('#prototype').removeClass('active');
        $('.about').removeClass('hidden');
        $('.prototype').addClass('hidden');
    });
    
});