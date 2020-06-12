const obj = {
    name: "AAPPP",
    arrName: ["a", "ab", "abc", "abchhhhh"],
    f_1: function (x) {
        console.log(x);
    },
    f_2: function () {
        this.arrName.forEach(function (item) {
            // this.f_1(item);
            // console.log(item);

        })
    }
}

obj.f_2();