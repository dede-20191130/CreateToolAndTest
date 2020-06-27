let book = {};

book.toString = function () {
    return "bookです。";
};

console.log(book.toString());

delete book.toString;

console.log(book.toString());