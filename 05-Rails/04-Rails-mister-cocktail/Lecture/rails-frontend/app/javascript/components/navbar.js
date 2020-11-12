const initNavbar = () => {

  window.addEventListener('scroll', (e) => {
    if (window.scrollY > window.innerHeight) {
      document.querySelector('.navbar').classList.add('navbar-white')
    } else {
      document.querySelector('.navbar').classList.remove('navbar-white')
    }
  })
}

export default initNavbar
