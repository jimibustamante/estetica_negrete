


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
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

// Google Analytics
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-38232523-1']);
_gaq.push(['_trackPageview']);

(function() {
var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();

$(document).ready(function(){
	// console.log(window.location.pathname)
// Función para activar ítem en menú al cargar la página
	var url = window.location.pathname; 
	switch(url)
	{
	case '':
	  ActivaItem($('li.home'))
	  break;
	case '/prp':
	  ActivaItem($('li.prp'))
	  break;
	case '/acido_hialuronico':
	  ActivaItem($('li.acido_hialuronico'))
	  break;
	case '/toxina_butolinica':
	  ActivaItem($('li.toxina_butolinica'))
	  break;
	case '/contact':
	  ActivaItem($('li.contact'))
	  break;
	case '/map':
	  ActivaItem($('li.map'))
	  break;
	default:
	  ActivaItem($('li.home'))
}

// Función para activar ítem cliqueado antes de request.
	$('ul li a').click(function(e) {
	  // Le quitamos clase 'active' al ítem seleccionado.
	  $('ul li.active').removeClass('active')
	  // Activamos el ítem cliqueado.
	  $(this).parent().addClass('active')  
	});
})

function ActivaItem(item){
	// $('ul li.active').removeClass('active')
	item.addClass('active')
}
