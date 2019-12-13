document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  const addPlace = (event) => {
    event.preventDefault()
    const placeNameInputEl = document.getElementById("favorite-input")
    const placeName = placeNameInputEl.value;
    placeNameInputEl.value = "";
    const ul = document.getElementById("sf-places");
    const li = document.createElement("li");
    li.textContent = placeName;
    ul.appendChild(li);
  };

  const addPhoto = (event) => {
    event.preventDefault()
    const placePicInputEl = document.getElementById("pic-url")
    const placePic = placePicInputEl.value;
    placePicInputEl.value = "";
    const ul = document.querySelector(".dog-photos");
    const li = document.createElement("li");
    const img = document.createElement("img");
    img.src = placePic;

    li.appendChild(img);
    ul.appendChild(li);
  };


  const removeHidden = (event) =>{
    event.preventDefault();
    var element = document.getElementById("see-photo");
    element.classList.toggle("hidden");
  };

  
  const SeePhotoFormEl = document.getElementById("show-form");
  SeePhotoFormEl.addEventListener("click",removeHidden);

  const addPhotoFormEl = document.getElementById("add-Photo");
  addPhotoFormEl.addEventListener("submit", addPhoto);

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });

  const placeFormEl = document.getElementById("places-form");
  placeFormEl.addEventListener("submit",addPlace)





  



});
