$fn=90;

module f3(){
    color("blue") import("./lib/f3.stl");
}
module ax12(){
    rotate([90,0,90]) translate([-70,-225,-197]) rotate([0,0,0]) color("blue") import("./lib/ax-12a.stl");
}

module M2(t){
    dia = 2.2;
    sdia = 4.62;  // counter sink dia
    cylinder(t, d=dia);  // M2
    translate([0,0,3]) cylinder(t, d=sdia);  // screw driver
}

module holes(t){
    translate([8,0,0]) M2(t);
    translate([-8,0,0]) M2(t);
    translate([0,8,0]) M2(t);
    translate([0,-8,0]) M2(t);
}

module foot(L=50, dia=12){
    color("SkyBlue") difference()
    {

        union(){
            translate([0,0,L-2]) cylinder(d=25, h=2);
            translate([0,0,dia/2]) cylinder(h=L-dia/2,d=dia);  // shaft
            translate([0,0,L-20]) cylinder(h=20,d1=0,d2=24); // base
            /* cylinder(h=5,d1=0,d2=12);  // point */
            translate([0,0,dia/2]) sphere(d=dia);
        }
        translate([0,0,L+1]) rotate([180,0,0]) holes(L);
        translate([0,0,dia/2]) cylinder(h=L,d=dia-8);  // center shaft hollow out
        translate([0,0,dia/2]) sphere(d=dia-8);  // center shaft hollow out shpere
    }
}

foot(40,15);
