let msg = "";

function doSample() {
    setTimeout(onFirst, 1000);
    setTimeout(onSecond, 50);

    function onFirst() {
        msg += "onFirst\n";
    }

    function onSecond() {
        msg += "onSecond\n";
    }
}

doSample();
alert(msg);
