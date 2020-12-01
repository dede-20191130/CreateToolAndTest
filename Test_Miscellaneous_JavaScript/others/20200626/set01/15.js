async function f() {
    let response = await fetch('http://no-such-url');
}

// f() は拒否された promise になる
// f().catch(console.log); // TypeError: failed to fetch // (*)
f();