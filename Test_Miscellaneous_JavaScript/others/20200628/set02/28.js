let s = "function makeObservable(target) {\n" +
    "    /* your code */\n" +
    "    target.observe = (func) => (target.observeFunc = func);\n" +
    "    target = new Proxy(target, {\n" +
    "        set(target, p, value, receiver) {\n" +
    "            if (target.observeFunc) target.observeFunc.call(receiver, p, value);\n" +
    "            Reflect.set(target, p, value, receiver);\n" +
    "        }\n" +
    "    })\n" +
    "    return target;\n" +
    "}\n" +
    "\n" +
    "let user = {};\n" +
    "user = makeObservable(user);\n" +
    "\n" +
    "user.name = \"QWERTY\"\n" +
    "\n" +
    "user.observe((key, value) => {\n" +
    "    console.log(`SET ${key}=${value}`);\n" +
    "});\n" +
    "\n" +
    "user.name = \"John\"; // console.logs: SET name=John\n" +
    "user.name = \"ASD\""

eval(s);