var debounce = function debounce(func, wait, immediate) {
    var timeout;
    return function () {
        var context = this, args = arguments;
        var later = function () {
            timeout = null;
            if (!immediate) func.apply(context, args);
        };
        var callNow = immediate && !timeout;
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
        if (callNow) func.apply(context, args);
    };
};

window.requestAnimFrame = (function () {
    return window.requestAnimationFrame || window.webkitRequestAnimationFrame || window.mozRequestAnimationFrame || window.oRequestAnimationFrame || window.msRequestAnimationFrame || function (callback) {
        window.setTimeout(callback, 1000 / 60);
    };
})();

var canvas = document.createElement("canvas");
document.body.appendChild(canvas);
canvas.style.position = 'fixed';
canvas.style.top = '0';
canvas.style.left = '0';
canvas.style.zIndex = '-1';

var getContext = function () {
    var ctx = canvas.getContext("2d");
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
    var cubes = [],
        spacing = 30,
        xPos = 0,
        n = window.innerWidth / spacing,
        tSpeedFactor = [.2, .4, .6, .8, 1],
        colors = ['#a5dff9', '#ef5285', '#feee7d'],
        i;

    for (i = 0; i < n; i++) {
        cubes.push({
            x: xPos,
            y: Math.round(Math.random() * canvas.height),
            width: Math.round(Math.random() * 10) * 2,
            tSpeed: tSpeedFactor[Math.floor(Math.random() * tSpeedFactor.length)],
            color: colors[Math.floor(Math.random() * colors.length)],
            angle: 0,
            upDownFactor: Math.random() >= .5 ? 1 : -1
        });
        xPos += spacing;
    }

    var draw = function () {
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        cubes.forEach(function (cube) {
            ctx.save();
            ctx.translate(cube.x + cube.width / 2, cube.y + cube.width / 2);
            ctx.rotate(cube.angle);
            ctx.fillStyle = cube.color;
            ctx.globalAlpha = 0.6;
            ctx.fillRect(-cube.width / 2, -cube.width / 2, cube.width, cube.width);
            ctx.restore();
            cube.y += cube.tSpeed * cube.upDownFactor;
            cube.angle += Math.PI / 360;
            if (cube.upDownFactor === -1 && cube.y + cube.width < 0) {
                cube.y = canvas.height;
            } else if (cube.upDownFactor === 1 && cube.y >= canvas.height) {
                cube.y = -cube.width;
            }
        });
        window.requestAnimationFrame(draw);
    };
    draw();
};

getContext();
window.addEventListener('resize', debounce(getContext, 500));
