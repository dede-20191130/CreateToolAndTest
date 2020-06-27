function f1({cost, period}) {
    return cost + ":" + period;
}

console.log(f1("a", "b"));
console.log(f1({
    cost: "12000",
    period: "2 week"
}));