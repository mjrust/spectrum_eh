// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
//jQuery.ajaxSetup({ 
//  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
//})

//jQuery.fn.submitWithAjax = function() {
//  this.submit(function() {
//    $.post(this.action, $(this).serialize(), null, "script");
//   return false;
//  })
// return this;
//};



$(document).ready(function(){
   //Old way of doing it
   //$('.swap_image').hover(function () {
   //		this.src = this.src.replace("_light", "_dark");}, function() {
   //		this.src = this.src.replace("_dark", "_light");
   //});
	
	//$('.swap_word').hover(function () {
	//	this.src = this.src.replace("_image", "_words");}, function() {
	//	this.src = this.src.replace("_words", "_image");
	//});
	
	//This is the hover effect for the top four images	
	$('#1a').mouseover(function () {
		$('#1b.overlay').fadeIn(500).mouseout(function () {
			$(this).fadeOut(500);
		});
	});
	
	$('#2a').mouseover(function () {
		$('#2b.overlay').fadeIn(500).mouseout(function () {
			$(this).fadeOut(500);
		});
	});
	
	$('#3a').mouseover(function () {
		$('#3b.overlay').fadeIn(500).mouseout(function () {
			$(this).fadeOut(500);
		});
	});
	
	$('#4a').mouseover(function () {
		$('#4b.overlay').fadeIn(500).mouseout(function () {
			$(this).fadeOut(500);
		});
	});

	//Drop down menus
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
