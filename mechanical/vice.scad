$fn = 90;


m2head = 4.62;
m2 = 2.2;

module face(){
    height = 25;
    width = 25;
    wall = 4;
    difference()
    {
        union(){
            translate([-height/2, -width/2,0]) cube([height, width, wall]);
            cylinder(d1=25, d2=5, h=10);  // tappered interface
        }
        // M2 screw pattern in a square around cable hole
        for(x = [-8:8:8] )
            for (y = [-8:8:8]){
                translate([x,y,-1]) cylinder(d=m2, h=wall+4);
                translate([x,y,+2]) cylinder(d=m2head, h=wall+4);
            }

    }
}

module vice(){
    difference(){
        sphere(d=22);  // ball for vice (socket)
        translate([0,0,-8-10]) cylinder(d=30, h=10);  // cut bottom off
    }

    h = 25;
    cylinder(d=11, h=h);
    translate([0,0,h]) rotate([0,180,0]) face();
}

vice();
