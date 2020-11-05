import { baseUrl, omdbApiKey } from './config';

const results = document.querySelector('#results');

const insertMovies = (movies) => {
  results.innerHTML = "";

  movies.forEach((result) => {
    const movie = `<li class="list-inline-item">
    <img src="${result.Poster}" alt="">
    <p>${result.Title}</p>
  </li>`;

    results.insertAdjacentHTML("beforeend", movie);
  });
};

const fetchMovies = (query) => {
  fetch(`${baseUrl}/?s=${query}&apikey=${omdbApiKey}`)
    .then(response => response.json())
    .then((data) => {
      insertMovies(data.Search);
    });
};


export {
  fetchMovies,
  insertMovies
};
