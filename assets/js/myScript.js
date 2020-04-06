function myFunction() {
 var BrowserWidth = window.innerWidth;
 var BrowserHeight = 0.94 *  window.innerHeight;
 x=document.getElementsByClassName("fill");
 for(var i=0;i<x.length;i++){
    x[i].style.height = BrowserHeight+"px";
 }
 var picWidth= 1.8 * BrowserHeight;
 if(picWidth < BrowserWidth) {
  for(var i=0;i<x.length;i++){
    x[i].style.backgroundSize="100% auto";
  }} else {
  for(var i=0;i<x.length;i++){
    x[i].style.backgroundSize="auto 100%";
  }
 }	
}

function myToggle() {
 const navs=document.querySelectorAll('.nav-items')
 navs.forEach(nav => nav.classList.toggle('nav-show'));
}

document.querySelector('.nav-toggle')
 .addEventListener('click', myToggle);

