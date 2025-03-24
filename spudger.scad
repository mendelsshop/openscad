midPoint = 50 * sqrt(3);
module triangle()
{
    polygon(points = [
        [ 0, 0 ],
        [ midPoint, 50 ],
        [ 0, 100 ],
    ]);
}
 linear_extrude(1)
translate([ -(50 * sqrt(3)) / 2, -50, 0 ]) offset(20) offset(-40) offset(20) triangle();

translate([ 0, 0, 1 ])
linear_extrude(1)
difference()
{
    {
        translate([ -(50 * sqrt(3)) / 2, -50, 0 ]) offset(20) offset(-40) offset(20) triangle();
        translate([ -14.5, 0, 0 ]) circle(midPoint / 4);
        difference()
        {

            translate([ -14.5, 0, 0 ]) circle(100);
            translate([ -14.5, 0, 0 ]) circle(32);
        }
    }
}
