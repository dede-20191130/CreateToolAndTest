const jsdom = require('jsdom');
const {JSDOM} = jsdom;
const dom = new JSDOM(`<html><body><div id="aaa">AAA<div></body></html>`);
const {document} = dom.window;
const jquery = require('jquery');
const $ = jquery(dom.window);

function getApiData(callback) {
    $.ajax('http://html2php.starrypages.net/time')
        .done(function (data) {
            callback(data);
        });
}

getApiData(function (data) {
    console.log(data);
});