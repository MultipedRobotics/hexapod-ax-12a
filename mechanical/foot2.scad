$fn=90;

module M2(t){
    dia = 2.2;
    sdia = 4.62;  // counter sink dia
    cylinder(t, d=dia);  // M2
    translate([0,0,3]) cylinder(t, d=sdia);  // screw driver
}

module holes(t){
    w = 24;
    translate([4,3,-1]) M2(t);
    translate([w-4,3,-1]) M2(t);
    translate([4,38-3,-1]) M2(t);
    translate([w-4,38-3,-1]) M2(t);

    // center holes, looks strange
    // translate([4,38/2,-1]) M2(t);
    // translate([25-4,38/2,-1]) M2(t);
}

module end(){
    w = 24;
    difference(){
        union(){
            translate([w/2,w/2,0]) sphere(d=w);
            translate([w/2,w/2+38-w,0]) sphere(d=w);
            translate([w/2,38/2,0]) rotate([90,0,0]) cylinder(d=w, h=38-w, center=true);
        }
        translate([0,0,-30]) cube([40,50,30]);
    }
}

module foot(l){
    w = 24;
    color("SkyBlue") difference() {
        union(){
            cube([w,38,2]);

            translate([w/2,w/2,2]) cylinder(d=w, h=l);
            translate([w/2,w/2+38-w,2]) cylinder(d=w, h=l);
            translate([0,w/2, 2]) cube([w, 38-w,l]);

            translate([0,0,l+2]) end();
        }
        holes(15+l);

        // hollow out center
        translate([w/2-15/2,38/2-w/2, -1]) cube([15, w,l]);
        translate([w/2,38/2,l-1]) rotate([90,0,0]) cylinder(d=15, h=w, center=true);
    }
}

foot(5);
