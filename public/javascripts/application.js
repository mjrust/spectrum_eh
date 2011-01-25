// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
  $('.swap_image').hover(function () {
		this.src = this.src.replace("_light", "_dark");}, function() {
		this.src = this.src.replace("_dark", "_light");
	});
	
	$('.swap_word').hover(function () {
		this.src = this.src.replace("_light", "_words");}, function() {
		this.src = this.src.replace("_words", "_light");
	});
});