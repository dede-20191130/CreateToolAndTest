// 📁 user.js
export default class User { // "default" を追加するだけ
    constructor(name) {
        this.name = name;
    }

    func1() {
        return this.name;
    }
}