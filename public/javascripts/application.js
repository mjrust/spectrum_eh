// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){
  $('.swap_image').hover(function () {
		this.src = this.src.replace("_light", "_dark");}, function() {
		this.src = this.src.replace("_dark", "_light");
	});
	
	$('.swap_word').hover(function () {
		this.src = this.src.replace("_image", "_words");}, function() {
		this.src = this.src.replace("_words", "_image");
	});
	
	$('UL.nav LI').hover(function(){
			$(this).children('.submenu').stop(true, true).slideDown(100).children('li').show();
		},function(){
			$(this).children('.submenu').children('li').hide().end().stop(true, true).slideUp(300);
		});

		$('UL.nav UL LI').hover(function(){
			$(this).children('UL').stop(true, true).slideToggle(250);								 
		});
		
	$('UL.portal_nav LI').hover(function(){
			$(this).children('.submenu').stop(true, true).slideDown(100).children('li').show();
		},function(){
			$(this).children('.submenu').children('li').hide().end().stop(true, true).slideUp(300);
		});

		$('UL.portal_nav UL LI').hover(function(){
			$(this).children('UL').stop(true, true).slideToggle(250);								 
		});
});