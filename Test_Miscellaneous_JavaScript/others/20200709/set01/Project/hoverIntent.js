'use strict';

// Here's a brief sketch of the class
// with things that you'll need anyway
class HoverIntent {

    constructor({
                    sensitivity = 0.1, // speed less than 0.1px/ms means "hovering over an element"
                    interval = 100, // measure mouse speed once per 100ms: calculate the distance between previous and next points
                    elem,
                    over,
                    out
                }) {
        this.sensitivity = sensitivity;
        this.interval = interval;
        this.elem = elem;
        this.over = over;
        this.out = out;

        // make sure "this" is the object in event handlers.
        this.onMouseMove = this.onMouseMove.bind(this);
        this.onMouseOver = this.onMouseOver.bind(this);
        this.onMouseOut = this.onMouseOut.bind(this);

        // assign the handlers
        elem.addEventListener("mouseover", this.onMouseOver);
        elem.addEventListener("mouseout", this.onMouseOut);

        // continue from this point
        elem.addEventListener("mousemove", this.onMouseMove);
        this.previousCoods = [null, null];
        this.currentCoods = [null, null];
        this.isCalledOver = false;
        this.timerId = null;

    }

    onMouseOver(event) {
        function calcHypotenuse(a, b) {
            return (Math.sqrt((a * a) + (b * b)));
        }

        /* ... */
        if (this.isCalledOver) return;
        if (this.timerId) return;

        this.previousCoods = [event.pageX, event.pageY];

        this.timerId = setInterval(() => {

            let delta = calcHypotenuse((this.currentCoods[0] - this.previousCoods[0]), (this.currentCoods[1] - this.previousCoods[1]));
            if ((delta / this.interval) < this.sensitivity) {
                clearInterval(this.timerId);
                this.timerId = null;
                this.over();
                this.isCalledOver = true;
            }
            this.previousCoods = this.currentCoods;
        }, this.interval)
    }

    onMouseOut(event) {
        /* ... */
        if (this.elem.contains(event.relatedTarget)) return;
        this.out();
        this.previousCoods = [null, null];
        this.currentCoods = [null, null];
        this.isCalledOver = false;
        clearInterval(this.timerId);
        this.timerId = null;
    }

    onMouseMove(event) {
        /* ... */
        // let [previousX, previousY] = [0, 0];
        // let timerId = setInterval(() => {
        //
        // }, this.interval)
        this.currentCoods = [event.pageX, event.pageY];
    }


    destroy() {
        /* your code to "disable" the functionality, remove all handlers */

        this.elem.removeEventListener('mousemove', this.onMouseMove);
        this.elem.removeEventListener('mouseover', this.onMouseOver);
        this.elem.removeEventListener('mouseout', this.onMouseOut);
    };

}