var pokemon = 'ライチュウ';

function sing() {
    //JavaScriptは関数内のどこでもvarの宣言を書ける
    //これらの変数は関数のどこで定義しても、先頭で定義したものとして見なされる
    //var pokemon;
    console.log(pokemon);
    var pokemon = 'ピカチュウ';
    console.log(pokemon);
}

sing();