function delay(ms) {
    // あなたのコード
    return new Promise(function (resolve, reject) {
        // setTimeout(() => resolve(null), ms);
        // setTimeout((resolve), ms);
        setTimeout(() => resolve(), ms);
    })
}

delay(3000).then(() => console.log('runs after 3 seconds'));