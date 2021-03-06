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
 var capWidth = document.getElementsByClassName("pic")[0].width;
 var capDiv = document.getElementsByClassName("caption");
 for (i=0; i<capDiv.length; i++) {
    capDiv[i].style.width = capWidth + "px";
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

// Open Small Screen Modal
function openMenuModal() {
  document.getElementById("modalMenuSmall").style.display = "block";

  // initialize display value for sub menus since there are coming with "" and not "none"
  document.getElementsByClassName("menuGalery")[0].style.display = "none";

  document.getElementsByClassName("subsubMenuGalery")[0].style.display = "none";
  document.getElementsByClassName("subsubMenuGalery")[1].style.display = "none";
  document.getElementsByClassName("subsubMenuGalery")[2].style.display = "none";
  document.getElementsByClassName("subsubMenuGalery")[3].style.display = "none";
  document.getElementsByClassName("subsubMenuGalery")[4].style.display = "none";

  document.getElementsByClassName("subsubsubMenuGalery")[0].style.display = "none";
  document.getElementsByClassName("subsubsubMenuGalery")[1].style.display = "none";
  document.getElementsByClassName("subsubsubMenuGalery")[2].style.display = "none";
  document.getElementsByClassName("subsubsubMenuGalery")[3].style.display = "none";
  document.getElementsByClassName("subsubsubMenuGalery")[4].style.display = "none";
  document.getElementsByClassName("subsubsubMenuGalery")[5].style.display = "none";


}
// Close Small Screen Modal
function closeMenuModal() {
  document.getElementById("modalMenuSmall").style.display = "none";
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

//open galery sub
function openGalerySub() {
  var subMenu = document.getElementsByClassName("menuGalery");
  var subMenuToggler = document.getElementsByClassName("openSub");
  if (subMenu[0].style.display === "none" ) { subMenu[0].style.display = "block"; subMenuToggler[0].innerHTML="-"; subMenuToggler[0].style.backgroundColor="rgba(127,127,127,0.8)"; } else { subMenu[0].style.display = "none"; subMenuToggler[0].innerHTML="+"; subMenuToggler[0].style.backgroundColor="inherit"; } 
  
}  

//open galery subsubsub
function openGalerySubSubSub(n) {
  var subsubsubMenu = document.getElementsByClassName("subsubsubMenuGalery");
  var subsubsubMenuToggler = document.getElementsByClassName("openSubSubSub");
  if (subsubsubMenu[n].style.display === "none" ) { subsubsubMenu[n].style.display = "block"; subsubsubMenuToggler[n].innerHTML="-"; subsubsubMenuToggler[n].style.backgroundColor="rgba(127,127,127,0.8)"; } else { subsubsubMenu[n].style.display = "none"; subsubsubMenuToggler[n].innerHTML="+"; subsubsubMenuToggler[n].style.backgroundColor="inherit"; } 
  
}  

//open galery subsub
function openGalerySubSub(n) {
  var subsubMenu = document.getElementsByClassName("subsubMenuGalery");
  var subsubMenuToggler = document.getElementsByClassName("openSubSub");
  if (subsubMenu[n].style.display === "none" ) { subsubMenu[n].style.display = "block"; subsubMenuToggler[n].innerHTML="-"; subsubMenuToggler[n].style.backgroundColor="rgba(127,127,127,0.8)"; } else { subsubMenu[n].style.display = "none"; subsubMenuToggler[n].innerHTML="+"; subsubMenuToggler[n].style.backgroundColor="inherit"; } 
  
}  

// Open Galery Screen Modal
function openMenuGaleryModal() {
  document.getElementsByClassName("modalMenuGalery")[0].style.display = "block";
}

// Close Small Screen Modal
function closeMenuGaleryModal() {
  document.getElementsByClassName("modalMenuGalery")[0].style.display = "none";
}

function adjustCaption() {
  var capWidth = document.getElementsByClassName("pic")[0].width;
  var capDiv = document.getElementsByClassName("caption");
  for (i=0; i<capDiv.length; i++) {
    capDiv[i].style.width = capWidth + "px";
  }
}
