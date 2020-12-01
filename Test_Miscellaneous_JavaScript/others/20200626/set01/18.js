async function wait() {
    await new Promise(resolve => setTimeout(resolve, 1000));

    return 10;
}

function f() {
    // ...ここに何を書きますか？
    // async wait() をして 10 を取得するのを待ちます
    // 覚えておいてください、"await" は使えません
    wait().then(console.log)
}

f();