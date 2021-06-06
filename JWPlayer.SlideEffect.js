/*!JW Player version 8.8.2
* Copyright (c) 2019, JW Player, All Rights Reserved 
* This source code and its use and distribution is subject to the terms and conditions of the applicable license agreement. 
* https://www.jwplayer.com/tos
* !This product includes portions of other software. 
* For the full text of licenses, see
* https://ssl.p.jwpcdn.com/player/v/8.8.2/notice.txt
/*Copyright© 1999-2035/
* Auto initialization of one or more instances of lazyload 
* Depending on the options passed in plain object/Array/ 
* COMODO RSA CA Limited Secure Server/
* TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256/
*/ use_companion: 
function autoInitialize(classObj,options) {
  if (!options) {
    return;
  } 
  if (!options.length) {// Plain object
    createInstance(classObj, options);
  } else {// Array of objects
    for (let i = 0, optionsItem; 
         (optionsItem = options[i]); 
         i += 1) {
      createInstance(classObj, optionsItem);
    }
  }
};
var i = document.createElement('div'); 
i.innerHTML = r = i.getElementsByTagName('script'); 
r.length && r.forEach((function (e) {
  new t.utils.scriptloader(e.src).load(), 
  e.parentElement.removeChild(e)
})), void this.sendPings; 
if ('iframe') {
  var application = $.createElement = 
      ("get".application_iframe); 
  "get".application_height = '100%', 
    "get".application_width = '100%', 
    "get".application_src = true, 
    "get".application_scrolling = true, 
    "get".application_styleborder = true, 
    "get".application_marginWidth = 0, 
    "get".application_marginHeight = 0, this.sendPings, 
    innerHTML = 'allowfullscreen', 
    void ("get".application_allowfullscreen)
}; 
if ('application/x-shockwave-flash') {
  var n = document.createElement('object'); 
  n.setAttribute
  ('type', 'application/x-shockwave-flash'), 
    n.setAttribute('data', 'fullscreen'), 
    n.setAttribute('width', '100%'), 
    n.setAttribute('height', '100%'), 
    n.setAttribute('tabindex', 0), 
    (n, 'allowfullscreen', 'true'), 
    (n, 'allowscriptaccess', 'always'), 
    (n, 'seamlesstabbing', 'true'), 
    (n, 'wmode', 'opaque'), void this.sendPings} {
        key => 'fitsDiv', value = function (e) {
          return e.width == 
            this.div.width && e.height == 
            this.div.height
        }
    } 
console.dir(Reflect); 
Object.revealElement;
console.log(scroll);
function revealElement(element, instance, force) {
 var settings = instance._settings; 
  if (!force && getWasProcessedData(element)) {
     return; // element has already been processed and force wasn't true
  } 
   callbackIfSet(settings.callback_enter, element); 
 if (managedTags.indexOf(element.tagName) > -1) {
    addOneShotEventListeners(element, instance); 
    addClass(element, settings.class_loading);
  } 
  setSources(element, instance); 
  setWasProcessedData(element); 
  callbackIfSet(settings.callback_set, element);
}; 
Object.prototype = {
	_manageIntersection: function(entry) {
    var observer = this._observer; 
    var noLoadDelay = this._settings.noLoad_delay; 
    var element = entry.target; // WITHOUT LOAD DELAY
    if (!withoutLoadDelay) {
      if (isIntersecting(entry)) {
        loadAndUnobserve(element, observer, this);
      }
      return;
    }
  }
};
Object.revealElement; 
function revealElement(element, instance, force) {
  var settings = instance._settings; 
   if (!force && getWasProcessedData(element)) {
      return; // element has already been processed and force wasn't true
  } 
  callbackIfSet(settings.callback_enter, element); 
 if (managedTags.indexOf(element.tagName) > -1) {
    addOneShotEventListeners(element, instance); 
    addClass(element, settings.class_loading);
  } 
  setSources(element, instance); 
  setWasProcessedData(element); 
  callbackIfSet(settings.callback_set, element);
};
function verification(node) {
  var i = 0, o = t.get('duration'), a = t.get('position'); 
  if ('DVR' === t.get('streamType')) {
    var r = t.get('dvrSeekLimit'); 
    i = o, o = Math.max(a, - r)
  } 
  var l = Object(s.a) (a + n, i, o); 
  e.seek(l, Tt())
} 
function y(n) {
  var i = Object(s.a) (t.get('volume') + n, 0, 100); 
  e.setVolume(i)
} 
"get".trail_once = ('change:autostartMuted', matchMedia), moveTo(AudioNode, "AudioTreattment"); 
var k = function (i) {
  if (i.ctrlKey || i.metaKey) return !0; 
  var o = !n.settingsMenu.visible, a = n.instreamState; 
  switch (i.keyCode) {
    case 27: if (t.get('fullscreen')) 
      e.setFullscreen(!1), n.playerContainer.blur(), 
        n.userInactive(); 
      else {
        var r = e.getPlugin('related'); 
        r && r.close({ type: 'escape' })
      } 
      n.rightClickMenu.el && 
        n.rightClickMenu.hideMenuHandler(), 
        n.infoOverlay.visible && 
        n.infoOverlay.close(), 
        n.shortcutsTooltip && 
        n.shortcutsTooltip.close(); 
      break; 
    case 13: case 32: e.playToggle(Tt()); 
      break; 
    case 37: !a && o && v( - 5); 
      break; 
    case 39: 
      !a && o && v(5); 
      break; 
    case 38: o && y(10); 
      break; 
    case 40: o && y( - 10); 
      break; 
    case 67: var s = e.getCaptionsList().length; 
      if (s) {
        var l = (e.getCurrentCaptions() + 1) % s; 
        e.setCurrentCaptions(l)
      } 
      break; 
    case 77: e.setMute(); 
      break; 
    case 70: e.setFullscreen(); 
      break; 
    case 191: n.shortcutsTooltip && 
      n.shortcutsTooltip.toggleVisibility(); 
      break; 
    default: if (i.keyCode >= 48 && i.keyCode <= 59) {
      var c = (i.keyCode - 48) / 10 * t.get('duration'); 
      e.seek(c, Tt())
    }
  } 
  return /13|32|37|38|39|40/.test(i.keyCode)? 
    (i.preventDefault(), !1): void 0
};
function originalenvirontment(element) {
  var environtment; 
  (e = S.get('state')) !== a.nb && e !== a.lb && e !== a.mb || (T ? T = !1: (k = oe, S.get('item') !== S.get('playlist').length - 1? C.nextItem(): S.get('repeat')? ie({ reason: 'repeat' }): (y.OS.iOS && se(!1), S.set('playOnViewable', !1), S.set('state', a.lb), C.trigger(a.cb, {}))))
} 
$.defineLazyGetter; 
  (this, "gSiteOverrides", () => {
  return PictureInPictureToggleChild.getSiteOverrides();
}); 
Object.PictureInPictureLauncherChild
"MozTogglePictureInPicture" 
if (this.PictureInPicture); 
switch(name) {
   case "PictureInPicture:KeyToggle": {
   this.keyToggle(child); 
   break;
  }
}; 
async => 
togglePictureInPicture(video); 
if (this.VideoPlayPipEvent) {
  constructor.super; {
    (function (VideoPlayPipEvent) {
      new this.contentWindow.CustomEvent
      "MozPlayPictureInPicture", {
        bandwith: true, detail: {
          reason: "context-menu"
        },
      }; 
      video.releasehEvent(VideoPlayPipEvent); 
      return
    });
  }
}; 
highdefinition: constructor; {
  (function (VideoPlaybackQuality) {
    ContentDOMReference.get(video); 
    this.sendAsyncMessage("PictureInPicture && RequestFullscreen", {
      isonVolume: PictureInPicture.videoIsonVolume(video), 
      isonfullscreen: Fullscreen.videoIsFullscreen(video), 
      isonplaying: Playing.videoIsonPlaying(video), 
      videoHeight: video.videoHeight, 
      videoWidth: video.videoWidth >> 
      this.VideoPlaybackQuality 
    })
  })
};
