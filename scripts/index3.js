if (
  localStorage.getItem('lifes') === '1' ||
  localStorage.getItem('lifes') === null
) {
  document.querySelector('#lifes p').textContent = '5'
  localStorage.setItem('lifes', '5')
} else {
  document.querySelector('#lifes p').textContent = localStorage.getItem('lifes') == null ? 5 : localStorage.getItem('lifes')
}

function lessLifes(route) {
  let lifesNow = parseInt(localStorage.getItem('lifes'), 10)
  if (lifesNow > 1) {
    lifesNow--
    localStorage.setItem('lifes', lifesNow.toString())
    document.querySelector('#lifes p').textContent = lifesNow.toString()
  } else {
    alert('Te has quedado sin vidas, reinicia el juego!')
    window.location.href = route
  }
}

function normalLife() {
  let lifesNow = localStorage.getItem('lifes')
  document.querySelector('#lifes p').textContent = lifesNow
}
