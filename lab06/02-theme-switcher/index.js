/*
    Hints: 
    1. Attach click event handlers to all four of the 
       buttons (#default, #ocean, #desert, and #high-contrast).
    2. Modify the className property of the body tag 
       based on the button that was clicked.
*/
const page = document.querySelector("body");
const makeDesert = () => {
   page.className = "desert";
};
const makeOcean = () => {
   page.className = "ocean";
};
const makeContrast = () => {
   page.className = "high-contrast";
};
const makeDefault = () => {
   page.removeAttribute("class");
};

document.querySelector("#default").addEventListener('click', makeDefault);
document.querySelector("#desert").addEventListener('click', makeDesert);
document.querySelector("#ocean").addEventListener('click', makeOcean);
document.querySelector("#high-contrast").addEventListener('click', makeContrast);