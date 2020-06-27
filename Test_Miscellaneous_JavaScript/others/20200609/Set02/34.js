let compareDate = (yy, mm, dd) => {
    let dateInputed = new Date(yy,mm,dd)
    return dateInputed.getTime() > new Date().getTime();
}

console.log(compareDate(2020,4,4));
console.log(compareDate("2020","4","4"));
console.log(compareDate(2020,5,13));
console.log(compareDate(2020,5,14));
console.log(compareDate("2020","5","14"));
console.log(compareDate(2020,5,20));