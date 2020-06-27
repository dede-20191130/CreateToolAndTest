let bool1 = false;
["a","b","c","d","e"].forEach((item)=>{
    console.log("x");
    if (item === "f"){
        bool1 = true;

    }
})
console.log(bool1);

["a","b","c","d","e"].forEach((item)=>{
    if (item === "b")bool1=true;
})
console.log(bool1);