const form = document.querySelector('#search-movies');
const results = document.querySelector('#results');
// const input = document.querySelector('#keyword');

const searchMovies = (query) => {
  fetch(`http://www.omdbapi.com/?s=${query}&apikey=adf1f2d7`)
    .then(response => response.json())
    .then((data) => {
      results.innerHTML = "";

      data.Search.forEach((result) => {
        const movie = `<li class="list-inline-item">
        <img src="${result.Poster}" alt="">
        <p>${result.Title}</p>
      </li>`;

        results.insertAdjacentHTML("beforeend", movie);
      });
    });
};

// Lorsque l'on tape dans le champs input
// input.addEventListener('input', (event) => {
//   searchMovies(event.currentTarget.value);
// });

// Lors de la soumission du formulaire
form.addEventListener('submit', (event) => {
  event.preventDefault();

  const input = event.currentTarget.querySelector('#keyword');

  searchMovies(input.value);
});
