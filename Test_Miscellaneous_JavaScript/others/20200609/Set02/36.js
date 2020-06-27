let user = {
    name: "John"
};

let descriptor = Object.getOwnPropertyDescriptor(user, 'name');

console.log(descriptor);
console.log(JSON.stringify(descriptor, null, 2));
console.log(JSON.stringify(descriptor, null));
console.log(JSON.stringify(descriptor, null,10));
/* プロパティディスクリプタ:
{
  "value": "John",
  "writable": true,
  "enumerable": true,
  "configurable": true
}
*/