let chineseDictionary = Object.create(null);
chineseDictionary.hello = "ni hao";
chineseDictionary.bye = "zai jian";

console.log(Object.keys(chineseDictionary)); // hello,bye
console.log(Object.entries(chineseDictionary));