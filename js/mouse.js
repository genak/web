window.onload = onWindowLoaded;

function onWindowLoaded()
{
    document.onmousemove = printMousePosition;
}

function printMousePosition()
{
    var posX = document.getElementById('mouseX');
    var posY = document.getElementById('mouseY');
    posX.innerText = "X: " + window.event.pageX;
    posY.innerText = "Y: " + window.event.pageY;
}