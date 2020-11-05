import { baseUrl, openWeatherApiID } from './config';
import { formatDate } from './date';

const weatherCard = document.querySelector('#weather-card');

// Afficher les resultats
const displayWeather = (location) => {
  const weather = location.weather[0];
  const formattedDate = formatDate(location.dt * 1000, location.timezone);

  weatherCard.innerHTML = `<div>
    <h2>Weather in ${location.name}</h2>
    <p>${formattedDate}</p>
    <p>${weather.description}</p>
    <img src="http://openweathermap.org/img/wn/${weather.icon}@2x.png" />
    <p>${location.main.temp}°C</p>
  </div>`;
};

const fetchWeather = (city) => {
  fetch(`${baseUrl}?q=${city}&appid=${openWeatherApiID}&units=metric`)
    .then(response => response.json())
    .then(displayWeather);
};

export {
  fetchWeather
};
