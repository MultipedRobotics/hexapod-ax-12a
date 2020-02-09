$fn=90;

module M2(t){
    dia = 2.2;
    sdia = 4.62;  // counter sink dia
    cylinder(t, d=dia);  // M2
    translate([0,0,3]) cylinder(t, d=sdia);  // screw driver
}

module holes(t){
    translate([4,3,-1]) M2(t);
    translate([25-4,3,-1]) M2(t);
    translate([4,38-3,-1]) M2(t);
    translate([25-4,38-3,-1]) M2(t);

    // center holes, looks strange
    // translate([4,38/2,-1]) M2(t);
    // translate([25-4,38/2,-1]) M2(t);
}

module end(){
    difference(){
        union(){
            translate([25/2,25/2,0]) sphere(d=25);
            translate([25/2,25/2+38-25,0]) sphere(d=25);
            translate([25/2,38/2,0]) rotate([90,0,0]) cylinder(d=25, h=38-25, center=true);
        }
        translate([0,0,-30]) cube([40,50,30]);
    }
}

module foot(l){

    color("SkyBlue") difference() {
        union(){
            cube([25,38,2]);

            translate([25/2,25/2,2]) cylinder(d=25, h=l);
            translate([25/2,25/2+38-25,2]) cylinder(d=25, h=l);
            translate([0,25/2, 2]) cube([25, 38-25,l]);

            translate([0,0,l+2]) end();
        }
        holes(15+l);

        // hollow out center
        translate([25/2-15/2,38/2-25/2, -1]) cube([15, 25,l]);
        translate([25/2,38/2,l-1]) rotate([90,0,0]) cylinder(d=15, h=25, center=true);
    }
}

foot(20);
