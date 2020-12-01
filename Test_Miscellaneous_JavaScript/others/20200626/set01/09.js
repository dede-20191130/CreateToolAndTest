Promise.all([
    new Promise((resolve, reject) => setTimeout(() => resolve(1), 3000)), // 1
    new Promise((resolve, reject) => setTimeout(() => resolve(2), 2000)), // 2
    new Promise((resolve, reject) => setTimeout(() => resolve(3), 1000))  // 3
]).then(console.log); // 1,2,3 promise が準備できた時: 各 promise は配列の中身に寄与します