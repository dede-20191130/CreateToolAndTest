let eventMixin = {
    /**
     * イベントの購読, 使い方:
     *  menu.on('select', function(item) { ... }
     */
    on(eventName, handler) {
        if (!this._eventHandlers) this._eventHandlers = {};
        if (!this._eventHandlers[eventName]) {
            this._eventHandlers[eventName] = [];
        }
        this._eventHandlers[eventName].push(handler);
    },

    /**
     * 購読のキャンセル 使い方:
     *  menu.off('select', handler)
     */
    off(eventName, handler) {
        let handlers = this._eventHandlers && this._eventHandlers[eventName];
        if (!handlers) return;
        for (let i = 0; i < handlers.length; i++) {
            if (handlers[i] === handler) {
                handlers.splice(i--, 1);
            }
        }
    },

    /**
     * イベントを生成してデータをアタッチ
     *  this.trigger('select', data1, data2);
     */
    trigger(eventName, ...args) {
        if (!this._eventHandlers || !this._eventHandlers[eventName]) {
            return; // イベントに対応するハンドラがない場合
        }

        // ハンドラ呼び出し
        this._eventHandlers[eventName].forEach(handler => handler.apply(this, args));
    }
};


// クラスを作成
class Menu {
    constructor() {
        this.messageBox = [];
    }

    choose(value) {
        this.trigger("select", value);
    }

}

// mixin を追加
Object.assign(Menu.prototype, eventMixin);

let menu = new Menu();


// 選択時にハンドラを呼び出し
menu.on("select", ([box, value]) => (box.push("Value selected: " + value)));
menu.on("select", ([box, item]) => box.push("My item is " + item));

// イベントのトリガ => Value selected: 123 を表示
menu.choose([menu.messageBox, 123]); // 選択された値
console.log(menu.messageBox);
console.log(menu.messageBox.join("\n"));