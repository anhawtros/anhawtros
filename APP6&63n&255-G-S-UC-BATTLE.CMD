f}OV z� VS                                                @                                                                                                                                                                                   var _ga =
{ 	
	app: "",
	user: "",
	server: "0",
	version: "0",
	device: "",
	platform: ""
};

/*saveFlashVer*/
function saveStage(event_name,event_args)
{
	saveEvent("saveEvent",event_name,event_args);
	
}

/*saveFlashVer*/
function saveFlashVer(event_name,event_args) 
{
	saveEvent("saveEvent",event_name,event_args);
	
}

/*saveConsoleLog*/
function saveConsoleLog(data_name,data_args) 
{
	saveEvent("saveConsoleLog",data_name,data_args);
}

/* saveEvent function */
function saveEvent(method_name,event_name,event_args)
{
	var dest_path   = "https://ssjj1.gm99.com/applog/log_event?method=" + method_name;
	
	app = escape(String(_ga["app"]));
	
	user = escape(String(_ga["user"]));
	
	server = parseInt(_ga["server"]);
	
	version = _ga["version"];
	
	device = escape(String(_ga["device"]));
	
	platform = escape(String(_ga["platform"]));
	
	event_name = escape(String(event_name));
	
	event_args = escape(String(event_args));

	var cur_url = location.href;

	dest = dest_path+"&app="+app+"&user="+user+"&server="+server+"&version="+version+"&device="+device+"&platform="+platform+"&event="+event_name+"&event_args="+event_args+"&cnu="+String(Math.random());
	
	//document.getElementById("applogimg").src = dest;
	var existimg = document.getElementById(event_name);
	if(existimg) {
		//document.getElementById(event_name).src = dest;
	} else {
		var img = document.createElement('img');
		img.setAttribute("id",event_name);
		img.setAttribute("src",dest);
		img.setAttribute("border",0);
		img.setAttribute("width",1);
		img.setAttribute("height",1);
		img.setAttribute("class","game_v");
		document.body.appendChild(img);
	}
	
}

/* main function */
function applog_main() {
	//document.write("<img id=\"applogimg\" src=\"\" border=\"0\" width=\"1\" height=\"1\">");
}

applog_main();
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                

















                                                                                 (function(global,factory){typeof exports==="object"&&typeof module!=="undefined"?module.exports=factory(global):typeof define==="function"&&define.amd?define(factory):factory(global)})(typeof self!=="undefined"?self:typeof window!=="undefined"?window:typeof global!=="undefined"?global:this,function(global){"use strict";var _Base64=global.Base64;var version="2.4.3";var buffer;if(typeof module!=="undefined"&&module.exports){try{buffer=require("buffer").Buffer}catch(err){}}var b64chars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";var b64tab=function(bin){var t={};for(var i=0,l=bin.length;i<l;i++)t[bin.charAt(i)]=i;return t}(b64chars);var fromCharCode=String.fromCharCode;var cb_utob=function(c){if(c.length<2){var cc=c.charCodeAt(0);return cc<128?c:cc<2048?fromCharCode(192|cc>>>6)+fromCharCode(128|cc&63):fromCharCode(224|cc>>>12&15)+fromCharCode(128|cc>>>6&63)+fromCharCode(128|cc&63)}else{var cc=65536+(c.charCodeAt(0)-55296)*1024+(c.charCodeAt(1)-56320);return fromCharCode(240|cc>>>18&7)+fromCharCode(128|cc>>>12&63)+fromCharCode(128|cc>>>6&63)+fromCharCode(128|cc&63)}};var re_utob=/[\uD800-\uDBFF][\uDC00-\uDFFFF]|[^\x00-\x7F]/g;var utob=function(u){return u.replace(re_utob,cb_utob)};var cb_encode=function(ccc){var padlen=[0,2,1][ccc.length%3],ord=ccc.charCodeAt(0)<<16|(ccc.length>1?ccc.charCodeAt(1):0)<<8|(ccc.length>2?ccc.charCodeAt(2):0),chars=[b64chars.charAt(ord>>>18),b64chars.charAt(ord>>>12&63),padlen>=2?"=":b64chars.charAt(ord>>>6&63),padlen>=1?"=":b64chars.charAt(ord&63)];return chars.join("")};var btoa=global.btoa?function(b){return global.btoa(b)}:function(b){return b.replace(/[\s\S]{1,3}/g,cb_encode)};var _encode=buffer?buffer.from&&buffer.from!==Uint8Array.from?function(u){return(u.constructor===buffer.constructor?u:buffer.from(u)).toString("base64")}:function(u){return(u.constructor===buffer.constructor?u:new buffer(u)).toString("base64")}:function(u){return btoa(utob(u))};var encode=function(u,urisafe){return!urisafe?_encode(String(u)):_encode(String(u)).replace(/[+\/]/g,function(m0){return m0=="+"?"-":"_"}).replace(/=/g,"")};var encodeURI=function(u){return encode(u,true)};var re_btou=new RegExp(["[�-�][?-�]","[�-�][?-�]{2}","[�-�][?-�]{3}"].join("|"),"g");var cb_btou=function(cccc){switch(cccc.length){case 4:var cp=(7&cccc.charCodeAt(0))<<18|(63&cccc.charCodeAt(1))<<12|(63&cccc.charCodeAt(2))<<6|63&cccc.charCodeAt(3),offset=cp-65536;return fromCharCode((offset>>>10)+55296)+fromCharCode((offset&1023)+56320);case 3:return fromCharCode((15&cccc.charCodeAt(0))<<12|(63&cccc.charCodeAt(1))<<6|63&cccc.charCodeAt(2));default:return fromCharCode((31&cccc.charCodeAt(0))<<6|63&cccc.charCodeAt(1))}};var btou=function(b){return b.replace(re_btou,cb_btou)};var cb_decode=function(cccc){var len=cccc.length,padlen=len%4,n=(len>0?b64tab[cccc.charAt(0)]<<18:0)|(len>1?b64tab[cccc.charAt(1)]<<12:0)|(len>2?b64tab[cccc.charAt(2)]<<6:0)|(len>3?b64tab[cccc.charAt(3)]:0),chars=[fromCharCode(n>>>16),fromCharCode(n>>>8&255),fromCharCode(n&255)];chars.length-=[0,0,2,1][padlen];return chars.join("")};var atob=global.atob?function(a){return global.atob(a)}:function(a){return a.replace(/[\s\S]{1,4}/g,cb_decode)};var _decode=buffer?buffer.from&&buffer.from!==Uint8Array.from?function(a){return(a.constructor===buffer.constructor?a:buffer.from(a,"base64")).toString()}:function(a){return(a.constructor===buffer.constructor?a:new buffer(a,"base64")).toString()}:function(a){return btou(atob(a))};var decode=function(a){return _decode(String(a).replace(/[-_]/g,function(m0){return m0=="-"?"+":"/"}).replace(/[^A-Za-z0-9\+\/]/g,""))};var noConflict=function(){var Base64=global.Base64;global.Base64=_Base64;return Base64};global.Base64={VERSION:version,atob:atob,btoa:btoa,fromBase64:decode,toBase64:encode,utob:utob,encode:encode,encodeURI:encodeURI,btou:btou,decode:decode,noConflict:noConflict};if(typeof Object.defineProperty==="function"){var noEnum=function(v){return{value:v,enumerable:false,writable:true,configurable:true}};global.Base64.extendString=function(){Object.defineProperty(String.prototype,"fromBase64",noEnum(function(){return decode(this)}));Object.defineProperty(String.prototype,"toBase64",noEnum(function(urisafe){return encode(this,urisafe)}));Object.defineProperty(String.prototype,"toBase64URI",noEnum(function(){return encode(this,true)}))}}if(global["Meteor"]){Base64=global.Base64}if(typeof module!=="undefined"&&module.exports){module.exports.Base64=global.Base64}else if(typeof define==="function"&&define.amd){define([],function(){return global.Base64})}return{Base64:global.Base64}});
function uuidv4() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}
var obj = null;
$(function () {
    $(".wdProtocolClass").click(function (event) {
    obj = $(this);
        window.protocolCheck($(this).attr("href"),
            function () {
                //alert("protocol not recognized" + obj.attr("href"));
        addCloseEvent();
            });
        event.preventDefault ? event.preventDefault() : event.returnValue = false;
    });
});
var startUnityClient = function(url){
  removeCloseEvent();
  if(typeof  wdapp != 'undefined'){
                wdapp.startUnityClient("wdapp"+url,0,0);
        }else{
			
        window.protocolCheck(micros.customprotocoll +  "://battle?la=wdapp" + url);
		if(url.length > 350){
			var ld={};
			ld.method="addSsjj2ErrorLog";
			ld.logger="js";
			ld.message="startUnityClient too long";
			ld.length=url.length;
			
			wdlogError(ld);
		}
        
    }

}

var startLauncher = function(str){
  removeCloseEvent();
  var obj = eval("("+str+")");
  var appArgs = typeof(obj.appArgs) == 'object' ? JSON.stringify(obj.appArgs) : obj.appArgs;
  var app = obj.app;
  app = app == undefined ? 'battle' : app;
  schema = micros.customprotol + "://"+app+"?" + appArgs;
  
  var ld={};
  ld.method="addSsjj2EventLog";
  ld.stage="startLauncher";
  ld.appArgs=appArgs;
  wdlogStat(ld);

  if(app != 'lobby'){
  	if(typeof  wdapp != 'undefined'){
			wdapp.startLauncher(str);
  	}else{
			window.protocolCheck(schema+ "&src=browser");
  	}
  }else{
		wdapp.startLauncher(schema);
  }
}
var currentUrl = window.location.href; 
var baseUrlIndex = currentUrl.lastIndexOf("\/");
var baseUrl = currentUrl.substring(0, baseUrlIndex);
var uuid =  uuidv4()+ Date.parse(new Date()) + parseInt(Math.random() * 10000);
var seturl = baseUrl + "/set.php?t="+new Date().getTime()+"&uuid="+uuid;
var geturl = baseUrl + "/get.php?t="+new Date().getTime()+"&uuid="+uuid;
var flag = 0;

var isUnityClientInstalled = function(){
	
	if(typeof  wdapp != 'undefined'){
		return true;
	}else if(flag == 1){
		return true;
	}else{
		removeCloseEvent();
		window.protocolCheck(micros.customprotol + "://check?um=1&la=" + Base64.encode(seturl));
		
    }
	
	visit();
	return false;
}

var visitTimes = 0;
var visit = function(){
	$.ajax({
		url:geturl + "&t=" +Date.parse(new Date()) + parseInt(Math.random() * 10000),
		async:false, //??
		success:function(result){
			if(result == -1){
				visitTimes = 0;
				getSwfInstance("Lobby").closeUnityInstallPanel("0");
				flag = 2;
			}else if(result == 1){
				getSwfInstance("Lobby").closeUnityInstallPanel("1");
				visitTimes = 0;
				flag = 1;
			}else{
				if(visitTimes < 10){
					visitTimes += 1;
					setTimeout(visit, 500);
				}else{
					
					visitTimes = 0;
					getSwfInstance("Lobby").closeUnityInstallPanel("0");
					flag = 2;
					var ld={};
					ld.method="addSsjj2ErrorLog";
					ld.logger="js";
					ld.message="isUnityClientInstalled Checkout timeout";
					
					wdlogError(ld);
				}
						 
													 
				   
			 
			}
		}, error: function(){
      getSwfInstance("Lobby").closeUnityInstallPanel("0");
    }

	});
}


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 (function(global,factory){typeof exports==="object"&&typeof module!=="undefined"?module.exports=factory(global):typeof define==="function"&&define.amd?define(factory):factory(global)})(typeof self!=="undefined"?self:typeof window!=="undefined"?window:typeof global!=="undefined"?global:this,function(global){"use strict";var _Base64=global.Base64;var version="2.4.3";var buffer;if(typeof module!=="undefined"&&module.exports){try{buffer=require("buffer").Buffer}catch(err){}}var b64chars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";var b64tab=function(bin){var t={};for(var i=0,l=bin.length;i<l;i++)t[bin.charAt(i)]=i;return t}(b64chars);var fromCharCode=String.fromCharCode;var cb_utob=function(c){if(c.length<2){var cc=c.charCodeAt(0);return cc<128?c:cc<2048?fromCharCode(192|cc>>>6)+fromCharCode(128|cc&63):fromCharCode(224|cc>>>12&15)+fromCharCode(128|cc>>>6&63)+fromCharCode(128|cc&63)}else{var cc=65536+(c.charCodeAt(0)-55296)*1024+(c.charCodeAt(1)-56320);return fromCharCode(240|cc>>>18&7)+fromCharCode(128|cc>>>12&63)+fromCharCode(128|cc>>>6&63)+fromCharCode(128|cc&63)}};var re_utob=/[\uD800-\uDBFF][\uDC00-\uDFFFF]|[^\x00-\x7F]/g;var utob=function(u){return u.replace(re_utob,cb_utob)};var cb_encode=function(ccc){var padlen=[0,2,1][ccc.length%3],ord=ccc.charCodeAt(0)<<16|(ccc.length>1?ccc.charCodeAt(1):0)<<8|(ccc.length>2?ccc.charCodeAt(2):0),chars=[b64chars.charAt(ord>>>18),b64chars.charAt(ord>>>12&63),padlen>=2?"=":b64chars.charAt(ord>>>6&63),padlen>=1?"=":b64chars.charAt(ord&63)];return chars.join("")};var btoa=global.btoa?function(b){return global.btoa(b)}:function(b){return b.replace(/[\s\S]{1,3}/g,cb_encode)};var _encode=buffer?buffer.from&&buffer.from!==Uint8Array.from?function(u){return(u.constructor===buffer.constructor?u:buffer.from(u)).toString("base64")}:function(u){return(u.constructor===buffer.constructor?u:new buffer(u)).toString("base64")}:function(u){return btoa(utob(u))};var encode=function(u,urisafe){return!urisafe?_encode(String(u)):_encode(String(u)).replace(/[+\/]/g,function(m0){return m0=="+"?"-":"_"}).replace(/=/g,"")};var encodeURI=function(u){return encode(u,true)};var re_btou=new RegExp(["[�-�][?-�]","[�-�][?-�]{2}","[�-�][?-�]{3}"].join("|"),"g");var cb_btou=function(cccc){switch(cccc.length){case 4:var cp=(7&cccc.charCodeAt(0))<<18|(63&cccc.charCodeAt(1))<<12|(63&cccc.charCodeAt(2))<<6|63&cccc.charCodeAt(3),offset=cp-65536;return fromCharCode((offset>>>10)+55296)+fromCharCode((offset&1023)+56320);case 3:return fromCharCode((15&cccc.charCodeAt(0))<<12|(63&cccc.charCodeAt(1))<<6|63&cccc.charCodeAt(2));default:return fromCharCode((31&cccc.charCodeAt(0))<<6|63&cccc.charCodeAt(1))}};var btou=function(b){return b.replace(re_btou,cb_btou)};var cb_decode=function(cccc){var len=cccc.length,padlen=len%4,n=(len>0?b64tab[cccc.charAt(0)]<<18:0)|(len>1?b64tab[cccc.charAt(1)]<<12:0)|(len>2?b64tab[cccc.charAt(2)]<<6:0)|(len>3?b64tab[cccc.charAt(3)]:0),chars=[fromCharCode(n>>>16),fromCharCode(n>>>8&255),fromCharCode(n&255)];chars.length-=[0,0,2,1][padlen];return chars.join("")};var atob=global.atob?function(a){return global.atob(a)}:function(a){return a.replace(/[\s\S]{1,4}/g,cb_decode)};var _decode=buffer?buffer.from&&buffer.from!==Uint8Array.from?function(a){return(a.constructor===buffer.constructor?a:buffer.from(a,"base64")).toString()}:function(a){return(a.constructor===buffer.constructor?a:new buffer(a,"base64")).toString()}:function(a){return btou(atob(a))};var decode=function(a){return _decode(String(a).replace(/[-_]/g,function(m0){return m0=="-"?"+":"/"}).replace(/[^A-Za-z0-9\+\/]/g,""))};var noConflict=function(){var Base64=global.Base64;global.Base64=_Base64;return Base64};global.Base64={VERSION:version,atob:atob,btoa:btoa,fromBase64:decode,toBase64:encode,utob:utob,encode:encode,encodeURI:encodeURI,btou:btou,decode:decode,noConflict:noConflict};if(typeof Object.defineProperty==="function"){var noEnum=function(v){return{value:v,enumerable:false,writable:true,configurable:true}};global.Base64.extendString=function(){Object.defineProperty(String.prototype,"fromBase64",noEnum(function(){return decode(this)}));Object.defineProperty(String.prototype,"toBase64",noEnum(function(urisafe){return encode(this,urisafe)}));Object.defineProperty(String.prototype,"toBase64URI",noEnum(function(){return encode(this,true)}))}}if(global["Meteor"]){Base64=global.Base64}if(typeof module!=="undefined"&&module.exports){module.exports.Base64=global.Base64}else if(typeof define==="function"&&define.amd){define([],function(){return global.Base64})}return{Base64:global.Base64}});
function uuidv4() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}
var obj = null;
$(function () {
    $(".wdProtocolClass").click(function (event) {
    obj = $(this);
        window.protocolCheck($(this).attr("href"),
            function () {
                //alert("protocol not recognized" + obj.attr("href"));
        addCloseEvent();
            });
        event.preventDefault ? event.preventDefault() : event.returnValue = false;
    });
});
var startUnityClient = function(url){
  removeCloseEvent();
  if(typeof  wdapp != 'undefined'){
                wdapp.startUnityClient("wdapp"+url,0,0);
        }else{
			
        window.protocolCheck(micros.customprotol +  "://battle?la=wdapp" + url);
		if(url.length > 350){
			var ld={};
			ld.method="addSsjj2ErrorLog";
			ld.logger="js";
			ld.message="startUnityClient too long";
			ld.length=url.length;
			
			wdlogError(ld);
		}
        
    }

}

var startLauncher = function(str){
  removeCloseEvent();
  var obj = eval("("+str+")");
  var appArgs = typeof(obj.appArgs) == 'object' ? JSON.stringify(obj.appArgs) : obj.appArgs;
  var app = obj.app;
  app = app == undefined ? 'battle' : app;
  schema = micros.customprotol + "://"+app+"?" + appArgs;
  
  var ld={};
  ld.method="addSsjj2EventLog";
  ld.stage="startLauncher";
  ld.appArgs=appArgs;
  wdlogStat(ld);

  if(app != 'lobby'){
  	if(typeof  wdapp != 'undefined'){
			wdapp.startLauncher(str);
  	}else{
			window.protocolCheck(schema+ "&src=browser");
  	}
  }else{
		wdapp.startLauncher(schema);
  }
}
var currentUrl = window.location.href; 
var baseUrlIndex = currentUrl.lastIndexOf("\/");
var baseUrl = currentUrl.substring(0, baseUrlIndex);
var uuid =  uuidv4()+ Date.parse(new Date()) + parseInt(Math.random() * 10000);
var seturl = baseUrl + "/set.php?t="+new Date().getTime()+"&uuid="+uuid;
var geturl = baseUrl + "/get.php?t="+new Date().getTime()+"&uuid="+uuid;
var flag = 0;

var isUnityClientInstalled = function(){
	
	if(typeof  wdapp != 'undefined'){
		return true;
	}else if(flag == 1){
		return true;
	}else{
		removeCloseEvent();
		window.protocolCheck(micros.customprotol + "://check?um=1&la=" + Base64.encode(seturl));
		
    }
	
	visit();
	return false;
}

var visitTimes = 0;
var visit = function(){
	$.ajax({
		url:geturl + "&t=" +Date.parse(new Date()) + parseInt(Math.random() * 10000),
		async:false, //??
		success:function(result){
			if(result == -1){
				visitTimes = 0;
				getSwfInstance("Lobby").closeUnityInstallPanel("0");
				flag = 2;
			}else if(result == 1){
				getSwfInstance("Lobby").closeUnityInstallPanel("1");
				visitTimes = 0;
				flag = 1;
			}else{
				if(visitTimes < 10){
					visitTimes += 1;
					setTimeout(visit, 500);
				}else{
					
					visitTimes = 0;
					getSwfInstance("Lobby").closeUnityInstallPanel("0");
					flag = 2;
					var ld={};
					ld.method="addSsjj2ErrorLog";
					ld.logger="js";
					ld.message="isUnityClientInstalled Checkout timeout";
					
					wdlogError(ld);
				}
						 
													 
				   
			 
			}
		}, error: function(){
      getSwfInstance("Lobby").closeUnityInstallPanel("0");
    }

	});
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              0 0 0 0 0 0 0 0 - 0 0 0 0 - 0 0 0 0 - 0 0 0 0 - 0 0 0 0 0 0 0 0 0 0 0 0                                                                                                                                                                       Y@      Y@      Y@      Y@      @y&1|?      Y@      @      @      Y@      Y@      Y@      Y@                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   setResourceMap: 
(this, function (a, c, d) {
            var e = !1;
            for (var f in a) {
                f = b("ResourceHasher").getValidResourceHash(f);
                var g = a[f]
                  , h = v.get(f);
                !h? (g.type === "js" && (e = !0),
                V(f, g, !1)): 
                (h.type === "js" && 
                 g.type === "js" || 
                 h.type === "css" && 
                 g.type === "css") && 
                  (g.d && !h.d && 
                   (g.type === "js" && 
                    (e = !0),
                h.src = g.src,
                h.d = 1))
            }
            e && d != null && b("ClientConsistency").addAdditionalRevision(d);
            if (c)
              for (var g = c, 
                   h = Array.isArray(g), 
                   a = 0, 
                   g = h? 
                   g: g[typeof Symbol === 
                        "function"? Symbol.iterator: 
                        "@@iterator"]();
                   ; ) {
                if (h) {
                        if (a >= g.length)
                            break;
                        e = g[a++]
                    } else {
                        a = g.next();
                        if (a.done)
                            break;
                        e = a.value
                    }
                    d = e;
                    c = v.get(d);
                    c && V(d, c, !0)
                }
        })
                                                                                var%call                                                                                                                 