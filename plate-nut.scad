// Copyright 2024 Kevin Murray <foss@kdmurray.id.au>
// CC-BY-NC-SA licensed
//
// This is designed to fit between the wells of a 6 or 12 well plate
// to adjust the lid height. Use with an appropriate sized bolt, and 
// you have four posts in the outer corners that you can adjust the
// lid height with.

include <BOSL2/std.scad>
use <threadlib/threadlib.scad>
$fn=1024;


module circlediamond(sq=40, x=40, y=40, r=20, h=20) {
    eps=0.01;
    translate([-(x-sq)/2, -(y-sq)/2, 0])
    difference() {
        translate([(x-sq)/2, (y-sq)/2, 0]) cube([sq, sq, h]);
        translate([0,     0, -eps]) cylinder(r=r, h=h+2*eps);
        translate([0,     y, -eps]) cylinder(r=r, h=h+2*eps);
        translate([x,     0, -eps]) cylinder(r=r, h=h+2*eps);
        translate([x,     y, -eps]) cylinder(r=r, h=h+2*eps);
        translate([x/2, y/2, -eps]) tap("M6", turns=25);
    }
};

circlediamond(sq=15, x=20, y=20, r=10);