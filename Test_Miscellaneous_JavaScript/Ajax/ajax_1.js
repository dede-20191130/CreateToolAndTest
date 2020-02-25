const x = new XMLHttpRequest();
x.onreadystatechange = function () {

    if (x.readyState == 4) {
        console.log(x.responseText);
    }

}
x.open('GET', 'http://html2php.starrypages.net/time');
x.send();