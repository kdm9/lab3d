/* V1, too big by about .5 mm in x & y
difference() {
    cube([128, 86, 8]);
    translate([3.5, 2, 2.5])
        cube([121, 82, 8]);
    translate([13.5, 12, -.05])
        cube([101, 62, 8.1]);
}
*/
difference() {
    cube([127.5, 85.6, 8]);
    translate([3.25, 1.8, 2.5])
        cube([121, 82, 8]);
    translate([13.25, 12, -.05])
        cube([101, 62, 8.1]);
}