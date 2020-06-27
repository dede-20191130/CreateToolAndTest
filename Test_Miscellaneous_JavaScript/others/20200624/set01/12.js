let json = '{ "age": 30 }'; // 不完全なデータ

try {

    let user = JSON.parse(json); // <-- エラーなし

    if (!user.name) {
        throw new SyntaxError("Incomplete data: no name"); // (*)
    }

    console.log(user.name);

} catch (e) {
    console.log("JSON Error: " + e.message); // JSON Error: Incomplete data: no name
}