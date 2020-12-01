function* gen() {
    // 質問を外側のコードに渡して答えを待ちます
    let result = yield "2 + 2?"; // (*)

    console.log(result);
}

let generator = gen();

let question = generator.next().value; // <-- yield は値を返します

console.log(question);

generator.next(4); // --> 結果をジェネレータに渡します

generator.next(8); // --> 結果をジェネレータに渡します