let user = {
    name: "John"
};

let descriptor = Object.getOwnPropertyDescriptor(user, 'name');

console.log(Object.entries(descriptor));
console.log(JSON.stringify(descriptor, null, 2));
/* プロパティディスクリプタ:
{
  "value": "John",
  "writable": true,
  "enumerable": true,
  "configurable": true
}
*/