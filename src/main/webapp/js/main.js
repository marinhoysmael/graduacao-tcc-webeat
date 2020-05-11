(function($) {

	"use strict";

	// Cache selectors
	var lastId, topMenu = $("#main-menu"), topMenuHeight = topMenu
			.outerHeight() + 15,
	// All list items
	menuItems = topMenu.find("a"),
	// Anchors corresponding to menu items
	scrollItems = menuItems.map(function() {
		var item = $($(this).attr("href"));
		if (item.length) {
			return item;
		}
	});

	// Bind click handler to menu items
	// so we can get a fancy scroll animation
	menuItems.click(function(e) {
		var href = $(this).attr("href"), offsetTop = href === "#" ? 0 : $(href)
				.offset().top
				- topMenuHeight + 1;
		$('html, body').stop().animate({
			scrollTop : offsetTop
		}, 300);
		e.preventDefault();
	});
	// Bind to scroll
	$(window).scroll(
			function() {
				// Get container scroll position
				var fromTop = $(this).scrollTop() + topMenuHeight;

				// Get id of current scroll item
				var cur = scrollItems.map(function() {
					if ($(this).offset().top < fromTop)
						return this;
				});
				// Get the id of the current element
				cur = cur[cur.length - 1];
				var id = cur && cur.length ? cur[0].id : "";
				
				console.log("ID>>",id);
				
				if (lastId !== id) {
					lastId = id;
					// Set/remove active class
					menuItems.parent().removeClass("active").end().filter(
							"[href=#" + id + "]").parent().addClass("active");
				}
			});

	$("a[rel=modal]").click(function(ev) {
		ev.preventDefault();

		var id = $(this).attr("href");

		var alturaTela = $(document).height();
		var larguraTela = $(window).width();

		var left = ($(window).width() / 2) - ($(id).width() / 2);
		var top = ($(window).height() / 2) - ($(id).height() / 2);

		$(id).css({
			'top' : top,
			'left' : left
		});
		$(id).show();
	});

	$("[data-toggle=popover]").popover({
		
	    html: true, 
		content: function() {
	          return $('#popover-content').html();
	        }
	});


	$('#Grid').mixitup();

	$(function() {
		$('[data-rel="lightbox"]').lightbox();
	});

	$('#botao_cadastrar').on('click', function () {
		$('#formModal').modal({
		    backdrop: 'static',
		    keyboard: false
		});
		$('#formModal').modal('show');
	});
	
})(jQuery);
