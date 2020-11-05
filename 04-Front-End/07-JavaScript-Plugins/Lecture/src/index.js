import { fetchMovies } from './movies';
import { initSortable } from './plugins/init_sortable';

const form = document.querySelector('#search-movies');

form.addEventListener('submit', (event) => {
  event.preventDefault();

  const input = event.currentTarget.querySelector('#keyword');

  fetchMovies(input.value);
  initSortable();
});
