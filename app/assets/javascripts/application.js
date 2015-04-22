// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
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
//= require_tree .

var laptop_models = ["Asset Model", "Latitude E7240",
                     "Latitude E6510", "Latitude E6420"];

var printer_models = ["Asset Model", "Xerox",
                     "Canon", "Brother", "HP", "Epson"];

$(document).ready( function() {
	$('#asset_type').change( function() {
		if ($('#asset_type').val() == 'laptops') {
			$('#dell_desktop_model').find('option').remove();
			laptop_models.forEach(function(lapmodel) {
				$('#dell_desktop_model').append('<option value="'+lapmodel+'">'+lapmodel+'</option>');
			})
		}
		if ($('#asset_type').val() == 'printers') {
			$('#dell_desktop_model').find('option').remove();
			printer_models.forEach(function(printmodel) {
				$('#dell_desktop_model').append('<option value="'+printmodel+'">'+printmodel+'</option>');
			})
		}
		$.get($('#asset_type').val(), function(data) {
			$('#results').html(data);

		});
	});
});



$(document).ready( function() {
	$('#dell_laptop_model').hide();
	});

