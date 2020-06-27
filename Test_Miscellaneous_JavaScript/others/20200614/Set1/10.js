let head = {
    glasses: 1
};

let table = {
    pen: 3,
    __proto__: head,
};

let bed = {
    sheet: 1,
    pillow: 2,
    __proto__: table,
};

let pockets = {
    money: 2000,
    __proto__: bed,
};

let var1;
let start = new Date().getTime();
for (let i; i < 1e15; i++) {
    var1 = head.glasses;
}
console.log(new Date().getTime() - start);

start = new Date().getTime();
for (let i; i < 1e15; i++) {
    var1 = pockets.glasses;
}
console.log(new Date().getTime() - start);