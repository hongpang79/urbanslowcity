function bluring() {
	try{
	    if(event.srcElement.tagName=='A'||event.srcElement.tagName=='IMG') {
	        document.body.focus();
	    }
	}catch( e ) { }
}

try{
	document.onfocusin=bluring;
}catch( e ) { }

var rurl = location.href;
var purl = getUrl(rurl);

function getUrl(url_str)
{
    var real_url;
    if (url_str.indexOf('/') > 0)
    {
        real_url = url_str.split('/');
        real_url = real_url[0]+'//'+real_url[2]+'/'+real_url[3]+'/';
    }
    return real_url;
}

function goLocate(go_url)
{
  document.location = purl + go_url;
}
