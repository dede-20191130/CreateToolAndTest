var input = document.getElementById("input");

input.observe("change", function (event) {
    // This line crashes Chrome!
    debugger;
});