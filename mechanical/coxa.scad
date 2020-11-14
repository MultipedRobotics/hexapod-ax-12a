$fn=90;

module f2(){
    color("lightGray") import("./lib/f2.stl");
}

module f3(){
    color("lightGray") import("./lib/f3.stl");
}
module ax12(){
    rotate([90,0,90]) translate([-70,-225,-197]) rotate([0,0,0]) color("blue") import("./lib/ax-12a.stl");
}

module f32(){
    difference()
    {
        f3();
        rotate([90,0,0]) cylinder(d=15,h=20,center=true);
        /* translate([-3.5,0,15]) cube([7,8,4]); */
        /* translate([-3.5,0,-19]) cube([7,8,4]); */
    }
}


//f2();
//translate([0,-24,-11.5]) rotate([0,90,180]) f3();


f2();
translate([0,-24,0]) rotate([0,90,180]) f32();
//translate([0,-24,0]) rotate([0,90,180]) f3();
