let timerId = setInterval(() => console.log('tick'), 2000);

// 5秒後に停止
setTimeout(() => {
    clearInterval(timerId);
    console.log('stop');
}, 5000);