function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min; //The maximum is exclusive and the minimum is inclusive
}

arr = [1,4,345];

arr = arr.map((item)=>(item * getRandomInt(0,10)));

console.log(arr);

