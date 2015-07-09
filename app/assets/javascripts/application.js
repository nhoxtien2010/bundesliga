// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function ()
{
		$("#list_cauthu_doibong>li").hover(function(){
	    $(this).css("color", "red");
	    }, function(){
	    $(this).css("color", "black");
		});
		
		
		$("#list_cauthu_doibong>li").click(function(){
			var s = $(this).text();
		});
		
		$("#search_cauthu").click(function(){
			var s = $("#keyword_cauthu").val();
			alert(s);
			$.ajax({
		        url: '/find_cauthu_ten',
						data: {
					    keyword: s, 			    
		  			},      
		        type: "POST", 
		        success: function(data) {
			        alert("seccessfully");
			        return false;
					},
			  	error: function(xhr, ajaxOptions, thrownError){
		                alert(xhr.status);
		            },
    		});
		});
		
		
		$(".logo-doibong").hover(function(){
	    	$(this).css("width", "80");
	    	$(this).css("height", "80");
	    }, function(){
		    $(this).css("width", "60");
		    $(this).css("height", "58");
		});
		 	
		
		
});



