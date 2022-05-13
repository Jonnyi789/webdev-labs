const aa = document.querySelector('.content');
const bb = window.getComputedStyle(aa);
let cc = parseFloat(bb.getPropertyValue('font-size')) /12;  //division makes pixel em

const makeBigger = () => {
   cc += 0.2;
   document.querySelector(".content").style.fontSize = `${cc}em`;
   document.querySelector("h1").style.fontSize = `${cc+0.5}em`;
   //alert('make bigger!');
};

const makeSmaller = () => {
   cc -= 0.2;
   document.querySelector("div.content").style.fontSize = `${cc}em`;
   document.querySelector("h1").style.fontSize = `${cc+0.5}em`;
   //alert('make smaller!');
};


document.querySelector("button#a1").addEventListener('click', makeBigger);
document.querySelector("button#a2").addEventListener('click', makeSmaller);