// Your code
document.ondragstart = () => false;

document.addEventListener("mousedown", onMouseDown);

function onMouseDown(eve) {

    if (!eve.target.classList.contains("draggable")) return;

    eve.preventDefault();

    // let coods = getCoords(eve.target);
    let shiftCoods = getShiftCoods(eve, eve.target);

    function adjustLeft(xCood) {
        if (xCood < 0) xCood = 0;
        if (document.documentElement.clientWidth < xCood + eve.target.offsetWidth) {
            xCood = document.documentElement.clientWidth - eve.target.offsetWidth;
        }
        return xCood;
    }

    moveAt(eve.target, eve.pageX, eve.pageY, shiftCoods.left, shiftCoods.top, adjustLeft);

    eve.target.classList.add("dragged", "index");

    function onMouseMove(eve) {
        moveAt(eve.target, eve.pageX, eve.pageY, shiftCoods.left, shiftCoods.top, adjustLeft);
    }

    document.addEventListener("mousemove", onMouseMove);

    let restoredFunc = document.onmouseup;
    document.onmouseup = function () {
        document.removeEventListener('mousemove', onMouseMove);
        eve.target.classList.remove("index");
        document.onmouseup = restoredFunc;
    }

}

function getCoords(elem) {
    let box = elem.getBoundingClientRect();

    return {
        top: box.top + pageYOffset,
        left: box.left + pageXOffset
    };
}

function getShiftCoods(eve, ele) {
    let shiftX = eve.clientX - ele.getBoundingClientRect().left;
    let shiftY = eve.clientY - ele.getBoundingClientRect().top;
    return {
        left: shiftX,
        top: shiftY
    };
}

function moveAt(ele, pageX, pageY, shiftX, shiftY, isProperValX = null, isProperValY = null) {
    let newLeft, newTop;
    newLeft = pageX - shiftX;
    newTop = pageY - shiftY;
    if (isProperValX) newLeft = isProperValX(newLeft);
    if (isProperValY) newTop = isProperValY(newTop);
    ele.style.left = newLeft + 'px';
    ele.style.top = newTop + 'px';
}