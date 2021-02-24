function gauss(mean, deviation)
{
    var x1, x2, w;
 
    do {
        x1 = random(2) - 1;
        x2 = random(2) - 1;
        w = x1*x1 + x2*x2;
    } until (0 < w && w < 1);
 
    w = sqrt(-2 * ln(w)/w);
    return mean + deviation * x1 * w;
}

function parabola(parX)
{
		var parY = 0;
		parY = ((((parX * parX) * -1) / 25) + (4 * parX));
		return parY;
}