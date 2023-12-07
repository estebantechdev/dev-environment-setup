const { help } = require('./helper.js');

const sum = (numbers) => {
  let total = 0;
  for (let i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }

  return total;
}

help();

const numbers = [1, 2, 3, 4, 5];

const multiplied = numbers.map(x => x * 2);
// as pairs
const pairs = numbers.map(x => [x, x]);

const pets = [
  { name: 'Puchini', age: 12, type: 'dog' },
  { name: 'Happy Piggy', age: 3, type: 'dog' },
  { name: 'Flea', age: 10, type: 'dog' },
  { name: 'Fluff', age: 12, type: 'cat' },
];
// average age
const ages = pets.map(x => x.age);
const result = sum(ages);
console.log(result / ages.length);

