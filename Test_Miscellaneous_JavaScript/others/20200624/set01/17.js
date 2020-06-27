function loadScript(src, callback) {
    let script = document.createElement('script');
    script.src = src;
    script.onload = () => callback(null, script);
    script.onerror = () => callback(new Error(`Script load error for ${src}`));
    document.head.append(script);
}

loadScript('https://cdnjs.cloudflare.com/ajax/libs/lodash.js/3.2.0/lodash.js', function (error, script) {
    if (error) {
        // エラー処理
        alert(error + "");
    } else {
        // スクリプトの読み込みが成功
        alert(`Cool, the ${script.src} is loaded`);
    }
    // alert(_); // ロードされたスクリプトで宣言されている関数
});

// alert(`Cool, the ${script.src} is loaded`);