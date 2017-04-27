/* global $ */
$(document).ready(function(){
    
    function eventHandler(event){
        event.preventDefault();
        var arr = ['contact', 'about', 'prototype'];
        arr.forEach(function(item){
            if(event.currentTarget.id === item){
                $('#' + item).addClass('active');
                $('.' + item).removeClass('hidden');
            } else {
                $('#' + item).removeClass('active');
                $('.' + item).addClass('hidden');
            }
        });
    }
    
    $('#prototype').click(eventHandler);
    
    $('#about').click(eventHandler);
    
    $('#contact').click(eventHandler);   
});