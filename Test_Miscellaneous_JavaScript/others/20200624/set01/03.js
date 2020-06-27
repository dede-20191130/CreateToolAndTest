class Article {
    constructor(title, date) {
        this.title = title;
        this.date = date;
    }

    static compare(articleA, articleB) {
        return articleA.date - articleB.date;
    }

    static createTodays() {
        // 思い出してください, this = Article
        return new this("Today's digest", new Date());
    }
}

// usage
let articles = [
    new Article("Mind", new Date(2019, 1, 1)),
    new Article("Body", new Date(2019, 0, 1)),
    new Article("JavaScript", new Date(2019, 11, 1)),
    Article.createTodays()
];

articles.sort(Article.compare);

console.log(articles[0].title); // Body
console.log(articles); // Body