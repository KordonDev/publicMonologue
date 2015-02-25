// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

function activateNavigationButton(toActivate) {
    var navigationList = document.getElementById("navigation").childNodes;
    for(var i = 0; i < navigationList.length; i++) {
        var navigationItem = navigationList.item(i);
        if (navigationItem.id != undefined) {
            if (navigationItem.id === toActivate) {
                navigationItem.classList.add('active');
            } else {
                navigationItem.classList.remove('active');
            }
        }
    }
}
