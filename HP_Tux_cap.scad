difference()
{
    rotate([ 0, 0, 0 ]) import(file = "./hpeb840g3-keycap.stl");
     translate([ 0, 0, -72.6 ]) scale([ 1, 1, 10 ]) rotate([ 12, 0, 0 ])
            import(file = "./keycap_tux_2-flat_multi_p2-0.stl", center = true);
}
