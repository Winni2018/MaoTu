(function(window) {

	'use strict';

	function classReg(className) {
		return new RegExp("(^|\\s+)" + className + "(\\s+|$)");
	}

	var hasClass, addClass, removeClass;

	if('classList' in document.documentElement) {
		hasClass = function(elem, c) {
			return elem.classList.contains(c);
		};
		addClass = function(elem, c) {
			elem.classList.add(c);
		};
		removeClass = function(elem, c) {
			elem.classList.remove(c);
		};
	} else {
		hasClass = function(elem, c) {
			return classReg(c).test(elem.className);
		};
		addClass = function(elem, c) {
			if(!hasClass(elem, c)) {
				elem.className = elem.className + ' ' + c;
			}
		};
		removeClass = function(elem, c) {
			elem.className = elem.className.replace(classReg(c), ' ');
		};
	}

	function toggleClass(elem, c) {
		var fn = hasClass(elem, c) ? removeClass : addClass;
		fn(elem, c);
	}

	var classie = {
		// full names
		hasClass: hasClass,
		addClass: addClass,
		removeClass: removeClass,
		toggleClass: toggleClass,
		// short names
		has: hasClass,
		add: addClass,
		remove: removeClass,
		toggle: toggleClass
	};

	// transport
	if(typeof define === 'function' && define.amd) {
		// AMD
		define(classie);
	} else {
		// browser global
		window.classie = classie;
	}

})(window);

//按钮
(function() {

	var bodyEl = document.body,
		content = document.querySelector('.content-wrap'),
		openbtn = document.getElementById('open-button'),
		fullbtn = document.getElementById('full-button'),
		closebtn = document.getElementById('close-button'),
		isOpen = false;

	function init() {
		initEvents();
	}

	function initEvents() {
		openbtn.addEventListener('click', toggleMenu);
		if(closebtn) {
			closebtn.addEventListener('click', toggleMenu);
		}

		// close the menu element if the target it´s not the menu element or one of its descendants..
		content.addEventListener('click', function(ev) {
			var target = ev.target;
			if(isOpen && target !== openbtn) {
				toggleMenu();
			}
		});

	}

	function initfull() {
		fullbtn.addEventListener('click', toggleMenu);
		if(closefull) {
			closefull.addEventListener('click', toggleMenu);
		}

		
		content.addEventListener('click', function(ev) {
			var target = ev.target;
			if(isOpen && target !== fullbtn) {
				toggleMenu();
			}
		});

	}

	function toggleMenu() {
		if(isOpen) {
			classie.remove(bodyEl, 'show-menu');
		} else {
			classie.add(bodyEl, 'show-menu');
		}
		isOpen = !isOpen;
	}

	init();

})();

//全屏
function toggleFullScreen() {
	if(!document.fullscreenElement && // alternative standard method  
		!document.mozFullScreenElement && !document.webkitFullscreenElement) { // current working methods  
		if(document.documentElement.requestFullscreen) {
			document.documentElement.requestFullscreen();
		} else if(document.documentElement.mozRequestFullScreen) {
			document.documentElement.mozRequestFullScreen();
		} else if(document.documentElement.webkitRequestFullscreen) {
			document.documentElement.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT);
		}
	} else {
		if(document.cancelFullScreen) {
			document.cancelFullScreen();
		} else if(document.mozCancelFullScreen) {
			document.mozCancelFullScreen();
		} else if(document.webkitCancelFullScreen) {
			document.webkitCancelFullScreen();
		}
	}
}

//day night 背景颜色发生改变
function Switch() {
	var button = document.getElementById("toggle-light");
	var type = document.getElementById('background').className;

	if(type == "daytime") {
		document.getElementById('background').className = "night";
		button.value = "close-light";
	} else {
		document.getElementById('background').className = "daytime";
		button.value = "open-light";
	}
}