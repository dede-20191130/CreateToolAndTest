class ValidationError extends Error {
    constructor(message) {
        super(message);
        this.name = "ValidationError";
    }
}


class PropertyRequiredError extends ValidationError {
    constructor(property) {
        super("No property: " + property);
        this.name = "PropertyRequiredError";
        this.property = property;
    }
}


// Usage
function readUser(json) {
    let user = JSON.parse(json);

    if (!user.age) {
        throw new PropertyRequiredError("No field: age");
    }
    if (!user.name) {
        throw new PropertyRequiredError("No field: name");
    }

    return user;
}

function getJ() {
    return '{"age":25}';
}

// try..catch での動作例

try {
    let user = readUser(getJ());
} catch (err) {
    if (err instanceof ValidationError) {
        console.log("Invalid data: " + err.message); // Invalid data: No field: name
    } else if (err instanceof SyntaxError) { // (*)
        console.log("JSON Syntax Error: " + err.message);
    } else {
        throw err; // 知らないエラーなので、再スロー
    }
}

console.log();

try {
    let user = readUser(getJ());
} catch (err) {
    if (err instanceof ValidationError) {
        console.log("Invalid data: " + err.message); // Invalid data: No property: name
        console.log(err.name); // PropertyRequiredError
        console.log(err.property); // name
    } else if (err instanceof SyntaxError) {
        console.log("JSON Syntax Error: " + err.message);
    } else {
        throw err; // 知らないエラーなので、それを再スロー
    }
}