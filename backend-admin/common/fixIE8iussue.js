//1.console
window.console = window.console || (function(){ 
    var c = {}; c.log = c.warn = c.debug = c.info = c.error = c.time = c.dir = c.profile 
    = c.clear = c.exception = c.trace = c.assert = function(){}; 
    return c; 
})();

//2. Metronic.blockUI/unblockUI
Metronic.blockUI= function(obj){};

Metronic.unblockUI= function(obj){};

$(document).ready(function(){
	setTimeout(function(){
		var bar = $(".pace-progress");
		bar.attr("data-progress","100").attr("data-progress-text","100%").css("width","100%").hide();
	},15000);
});