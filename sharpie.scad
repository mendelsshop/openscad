difference()
{
    translate([ 0, 0, 16 ])
    {
        resize([ 0, 0, 36 ])
        {
            sphere(r = 7, $fs = 0.1);
        }
        cylinder(h = 80, r = 7, $fs = 0.1);
    }

    translate([ 0, 0, -2 ])
    {
        cylinder(h = 2, r = 6, $fs = 0.1);
    }
}
translate([ 0, 0, 96 ])
{
    cylinder(h = 20, r = 6, $fs = 0.1);
    translate([ 0, 0, 20 ])
    {
        resize([ 0, 0, 30 ])
        {
            sphere(r = 6, $fs = 0.1);
        }
        translate([ 0, 0, 10 ])
        {
            cylinder(h = 10, r = 3, $fs = 0.1);
            resize([ 0, 0, 36 ])
            {
                sphere(r = 2.75, $fs = 0.1);
            }
        }
    }
}
