import { fetchWeather } from './weather';

const form = document.querySelector('#form');
const city = document.querySelector('#city');

form.addEventListener('submit', (event) => {
  event.preventDefault();

  fetchWeather(city.value);
});
