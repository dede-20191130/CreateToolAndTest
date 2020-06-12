const ff = function () {
    try {
        alert("aaa");
    } catch (e) {
        console.log(e)
    }
    console.log("next")
}
ff();