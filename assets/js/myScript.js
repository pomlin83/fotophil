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

function sizeLightbox() {
 var ActImgHeight = window.innerHeight;
 var ActImgWidth = window.innerWidth;
 var topPadding = ActImgHeight * 0.1;
 z=document.getElementsByClassName("modal");
 z[0].style.paddingTop = topPadding+"px";
 ActImgHeight = ActImgHeight - 2 * topPadding;
 y=document.getElementsByClassName("lightboxImg");
 var ratioImg = y[1].width / y[1].height;
 var ActMaxImgWidth = ratioImg * ActImgHeight;
 x=document.getElementsByClassName("modal-content");
 x[0].style.maxWidth = ActMaxImgWidth+"px";
}

function myToggle() {
 const navs=document.querySelectorAll('.nav-items')
 navs.forEach(nav => nav.classList.toggle('nav-show'));
}

document.querySelector('.nav-toggle')
 .addEventListener('click', myToggle);

// Open the Modal
function openModal() {
  document.getElementById("myModal").style.display = "block";
}

// Close the Modal
function closeModal() {
  document.getElementById("myModal").style.display = "none";
}

var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var caption = document.getElementsByClassName("captionLightBox");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
    caption[i].style.display = "none";
  }
  slides[slideIndex-1].style.display = "block";
  caption[slideIndex-1].style.display = "block";
}
