document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById('mycanvas');
    canvas.width = 500;
    canvas.height = 500;
    const ctx = canvas.getContext('2d');
    ctx.fillStyle = "red";
    ctx.fillRect(0, 0, canvas.width, canvas.height);
    ctx.beginPath();
    ctx.arc(100, 75, 50, 0, 2 * Math.PI);
    // ctx.strokeStyle = 'blue';
    ctx.lineWidth = 20;
    ctx.stroke();
    ctx.fillStyle = 'yellow';
    ctx.fill();

});
