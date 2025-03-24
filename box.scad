module Base()
{
    difference()
    {
        square(size = [ 15, 20 ], center = true);
        difference()
        {
            square(size = [ 15, 20 ], center = true);
            rotate([ 0, 0, 45 ]) square(size = 23, center = true);
        }
    }
}
module Wall()
{
    difference()
    {
        Base();
        resize([ 14.5, 19.5, 0 ]) Base();
    }
}
module Suppot(len, side = 1, r = 0.5)
{

    difference()
    {
        cylinder(h = len, r = r, center = true, $fn = 100);
        translate([ 0, -1, 0 ]) cube(len, center = true);
    }
    {
        if (side)
        {
            translate([ -.75, -1, -len / 2 ]) difference()
            {
                cube([ 1.25, 1, len ]);
                translate([ 0, -.4, .1 ]) cube([ 1.5, 1, len - .2 ]);
            }
        }
        else
        {
            translate([ -0.5, -1, -len / 2 ]) difference()
            {
                cube([ 1.25, 1, len ]);
                translate([ 0, -.4, .1 ]) cube([ 1.5, 1, len - .2 ]);
            }
        }
    }
}

 translate([ -.1, 0, 0 ])
{
     linear_extrude(0.15) Base();
     linear_extrude(2.5) Wall();
 }
translate([ 8, 0, 2.5 ]) rotate([ 90, 0, 0 ])
{
    cylinder(h = 15, r = 0.25, center = true, $fn = 100);

    Suppot(1.8);
    translate([ 0, 0, 4 ]) Suppot(1.8);
    translate([ 0, 0, 7.5 ]) Suppot(0.8);
    translate([ 0, 0, -4 ]) Suppot(1.8);
    translate([ 0, 0, -7.5 ]) Suppot(0.8);
}

 translate([ 16.1, 0, 0 ])
{
     linear_extrude(0.15) Base();
     linear_extrude(2.5) Wall();
 }
translate([ 8, 0, 2.5 ])
{

    rotate([ 90, 0, 0 ])
    {

        difference()
        {

            translate([ 0, 0, -2 ]) Suppot(1.8, 0);
            cylinder(h = 15, r = 0.37, center = true, $fn = 100);
        }
        difference()
        {

            translate([ 0, 0, -6 ]) Suppot(1.8, 0);
            cylinder(h = 15, r = 0.37, center = true, $fn = 100);
        }
        difference()
        {

            translate([ 0, 0, 2 ]) Suppot(1.8, 0);
            cylinder(h = 15, r = 0.37, center = true, $fn = 100);
        }
        difference()
        {

            translate([ 0, 0, 6 ]) Suppot(1.8, 0);
            cylinder(h = 15, r = 0.37, center = true, $fn = 100);
        }
    }
}
