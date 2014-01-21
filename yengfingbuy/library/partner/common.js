
if(logicbox === undefined) var logicbox = {};

(function($) {
	
	logicbox.prototype = $.extend(logicbox, {
		newWin: function(el) {
			if (el===undefined) {
				el = this;
			}
			var w = window.open($(el).attr('href'),'_blank');
			w.focus();
			return false;
		},
		pageTrack: function(el,e,url) {
			if (e!==null) {
				var key=this.keyCode(e);
			}
			
        	if(!key || (key && key == 13)) {
				//for dynamic/inline pageview only allow once per element
          		if (pageTracker && el.tracked===undefined) {
					if (url===undefined) {
						url = $(el).attr('href');
					}
            		pageTracker._trackPageview(url);
					el.tracked=true;
          		}
			}	
		},
		eventTrack: function(el,e,cat) {
			if (e!==null) {
				var key=this.keyCode(e);
			}
			
	   	    if(!key || (key && key == 13)) {
        	  	if (pageTracker) {
					pageTracker._trackEvent(cat,e.type,$(el).attr('href'));
          		}
			}
		},
		keyCode: function(e) {
			return e.charCode || e.keyCode;
		}
	});

	$(function() { //DOM load
			   
		$("a[rel=external]").bind('click keypress',
			function(e) {
				logicbox.eventTrack(this,e,'outgoing');
				return logicbox.newWin(this);
			}
		);
		$("a[href^=mailto]").bind('click keypress',
			function(e) {
				logicbox.eventTrack(this,e,'email');
				return true;
			}
		);
		$("a[href$=js],a[href$=zip],a[href$=css]").bind('click keypress', 
			function(e){
				logicbox.pageTrack(this,e);
			}
		);

	});

})(jQuery);