let message = "Hello";
{
    // 外には見せるべきでないローカル変数で必要な処理をする
    message = "AAABBB";

    console.log(message); // Hello
}

console.log(message); // Error: message は未定義