window.onload = () => {
  if (localStorage.getItem('lifes') == 1 || !localStorage.getItem('lifes')) {
    const counter = document.querySelector('#lifes p').textContent
    localStorage.setItem('lifes', counter)
  }
}

function lessLifes() {
  let lifesNow = localStorage.getItem('lifes')
  if (lifesNow > 1) {
    lifesNow--
    localStorage.setItem('lifes', lifesNow)
    document.querySelector('#lifes p').textContent = lifesNow
  } else {
    alert('Te has quedado sin vidas, reinicia el juego!')
    window.location.href = './level3.php'
  }
}

function normalLife () {
    let lifesNow = localStorage.getItem('lifes')
    document.querySelector('#lifes p').textContent = lifesNow
}