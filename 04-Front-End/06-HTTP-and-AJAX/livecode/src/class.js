const form = document.querySelector('#form');
const username = document.querySelector('#username');
const card = document.querySelector('#github-card');

class Github {
  constructor() {
    this.baseUrl = "https://api.github.com/users";
  }

  displayUser() {
    card.innerHTML = `
      <p>Nom : ${this.user.name}</p>
      <img src="${this.user.avatar_url}" />
    `;
  }

  fetchUser() {
    fetch(`${this.baseUrl}/${this.username}`)
      .then(response => response.json())
      .then((user) => {
        this.user = user;

        this.displayUser();
      });
  }

  handleSubmit() {
    this.username = username.value;

    this.fetchUser();
  }
}

form.addEventListener('submit', (e) => {
  e.preventDefault();

  const github = new Github();
  github.handleSubmit();
});
