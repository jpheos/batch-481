// Const
const baseUrl = "https://api.github.com/users";
const form = document.querySelector('#form');
const username = document.querySelector('#username');
const card = document.querySelector('#github-card');

// Functions
const displayUser = (user) => {
  card.innerHTML = `
  <p>Nom : ${user.name}</p>
  <img src="${user.avatar_url}" />
`;
};

const fetchUser = (query) => {
  fetch(`${baseUrl}/${query}`)
    .then(response => response.json())
    .then((user) => {
      displayUser(user);
    });
};

const handleSubmit = (event) => {
  event.preventDefault();

  fetchUser(username.value);
};

// Events listener
form.addEventListener('submit', handleSubmit);
