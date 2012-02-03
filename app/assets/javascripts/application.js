// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require_tree .


	$(function (){
		$('#from').datepicker();
		$('#to').datepicker();

    var article_link = $('#article').html();
    var video_link = $('#video').html();
    var song_link = $('#song').html();
    var tip_link = $('#tip').html(); 
    var album_link = $('#album').html(); 
    alert(article_link)
    $.ajax({
    url: article_link,
    type:'HEAD',
    error: function(){
        alert("file not found");
    },
    success: function(){
        alert("file found");
    }
});

	})
