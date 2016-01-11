function save_content(f,mode) {
	document.com_board.com_board_basic.value = mode; 
	document.com_board.submit(); 
}

function openWindow (sURL,w,h) {
	var sWidth, sHeight; 
	var sFeatures; 
	var oWindow; 
	sWidth = w; 
	sHeight = h; 
	if (arguments[1] != null && arguments[1] != "") sWidth = arguments[1] ;
	if (arguments[2] != null && arguments[2] != "") sHeight = arguments[2] ;
	sFeatures = "width=" + sWidth + ",height=" + sHeight ;
	sFeatures += ",left=3000,top=3000" ;
	sFeatures += ",directories=no,location=no,menubar=no,resizable=no,scrollbars=no,status=no,titlebar=no,toolbar=no";
	oWindow = window.open(sURL, "PopupWindow", sFeatures); 
	oWindow.focus();
	
	// move to screen center 
	oWindow.moveTo( (window.screen.availWidth - sWidth) / 2, (window.screen.availHeight - sHeight) / 2); 
	return; 
}