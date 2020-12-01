let handlerArr = [];
handlerArr.push(() => (console.log(1)));
handlerArr.push(() => (console.log(11)));
handlerArr.push(() => (console.log(121)));
handlerArr.forEach(handler => handler());