const h2hallOfFame = document.querySelector('#hof');
const h2allCoqtails = document.querySelector('#allc');
const searchBar = document.querySelector('#search-bar');
const cocktailCard = document.querySelectorAll('.card-cocktail');

const b = document.querySelector('#hof-card');

h2hallOfFame.addEventListener('click', () => {
  b.style.display = 'flex';
  h2allCoqtails.style.fontSize = '20px';
  h2hallOfFame.classList.remove('petit')
});

h2allCoqtails.addEventListener('click', () => {
  b.style.display = 'none';
  h2allCoqtails.style.fontSize = '2rem';
  h2hallOfFame.classList.add('petit')
});


// SearchBar

searchBar.addEventListener('keyup', (event) => {
  console.log(event.target.value);
  cocktailCard.forEach((cocktail) => {
    const name = cocktail.querySelector('.card-title').innerHTML;
    // const cocktails = [];
    // cocktails.push(cocktail);
    if (name.toLowerCase().includes(searchBar.value)) {
      // if (cocktails.length === 1) {
      //   console.log('hello')
      // }
      cocktail.style.display = 'block';

    } else {
      cocktail.style.display = 'none'
    }
  });
});
