midPoint = 50 * sqrt(3);
module triangle()
{
    polygon(points = [
        [ 0, 0 ],
        [ midPoint, 50 ],
        [ 0, 100 ],
    ]);
}
module bitTop()
{

    translate([ 0, 4.25, 5.25 ]) rotate([ 15, 0, 0 ]) rotate([ 0, 0, 45 ]) cube([ 2.75, 2.75, 20 ], center = true);
}
union()
{
    linear_extrude(height = 8) resize([ 6.35, 7.3323, 0 ])
    {
        rotation = 60;
        translate([ -midPoint, -50, 0 ])
        {
            triangle();
            rotate([ 0, 0, rotation ])
            {
                translate([ 0, -100, 0 ])
                {
                    triangle();
                    rotate([ 0, 0, rotation ])
                    {
                        translate([ 0, -100, 0 ])
                        {
                            triangle();
                            rotate([ 0, 0, rotation ])
                            {
                                translate([ 0, -100, 0 ])
                                {
                                    triangle();
                                    rotate([ 0, 0, rotation ])
                                    {
                                        translate([ 0, -100, 0 ])
                                        {
                                            triangle();
                                        }
                                    }
                                    rotate([ 0, 0, rotation ])
                                    {
                                        translate([ 0, -100, 0 ])
                                        {
                                            triangle();
                                            rotate([ 0, 0, rotation ])
                                            {
                                                translate([ 0, -100, 0 ])
                                                {
                                                    triangle();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    translate([ 0, 0, 8 ])
    {
        difference()
        {
            cylinder(h = 13, r = 3.25, $fn = 100);
            translate([ 0, 0, 3 ])
            {

                difference()
                {
                    translate([ 0, 0, 4. ]) cylinder(h = 6, r = 4, $fn = 100);
                    resize([ 0, 0, 18 ]) sphere(r = 4, $fn = 8);
                }
            }
            for (i = [0:90:270])
            {

                rotate(i) bitTop();
            }
        }
    }
}
