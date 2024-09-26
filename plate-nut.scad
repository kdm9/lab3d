// Copyright 2024 Kevin Murray <foss@kdmurray.id.au>
// CC-BY-NC-SA licensed, https://creativecommons.org/licenses/by-nc-sa/4.0/
//
// This is designed to fit between the wells of a 6 or 12 well plate
// to adjust the lid height. Use with an appropriate sized bolt, and 
// you have four posts in the outer corners that you can adjust the
// lid height with.

include <BOSL2/std.scad>
use <threadlib/threadlib.scad>
$fn=96;

    
module circlediamond(
        sq=40, // Size of printed nut. Can be less than x/y to truncate the points.
        x=40, // Distance between well centers, x-axis
        y=40, // Distance between well centers, y-axis
        r=20, // Well radius
        h=20, // Well depth
        bolt="M6",
) {
    eps=0.01;
    translate([-(x-sq)/2, -(y-sq)/2, 0])
    difference() {
        translate([(x-sq)/2, (y-sq)/2, 0]) cube([sq, sq, h]);
        translate([0,     0, -eps]) cylinder(r=r, h=h+2*eps);
        translate([0,     y, -eps]) cylinder(r=r, h=h+2*eps);
        translate([x,     0, -eps]) cylinder(r=r, h=h+2*eps);
        translate([x,     y, -eps]) cylinder(r=r, h=h+2*eps);
        translate([x/2, y/2, -eps]) tap(bolt, turns=50);
    }
};

circlediamond(sq=15, x=20, y=20, r=10, bolt="M6");