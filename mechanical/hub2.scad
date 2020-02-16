$fn=90;


m2head = 4.62;
m2 = 2.2;

module M3(t){
    dia = 3.5;
    sdia = 8.5;  // counter sink dia
    cylinder(3*t, d=dia, center=true);  // M3
    translate([0,0,2]) cylinder(3*t, d=sdia, center=false);  // screw driver
}

module f3(){
    color("blue") import("./lib/f3.stl");
}
module ax12(){
    rotate([90,0,90]) translate([-70,-225,-197]) rotate([0,0,0]) color("blue") import("./lib/ax-12a.stl");
}

module m3screwmount(h, dia=10){
    difference()
    {
        cylinder(d=dia, h=h);
        translate([0,0,-1]) cylinder(d=2.65, h+2);
    }
}

module ring(dia){
    height = 25;
    width = 25;
    wall = 4;
    stand = 40;
    tapper = 20;
    basew = 100;
    baseh = 140;
    difference()
    {
        union(){
            cylinder(d=dia, h=height+stand);
            for(x = [0:60:300]) {
                rotate([0,0,x]) translate([dia/2-4,-width/2,0]) cube([4,width,height]);
            }
            translate([0,0,height+stand]) cylinder(d1=dia, d2=dia*1.25,h=tapper);
            /* translate([-basew/2,-baseh/2,height+stand+tapper]) cube([basew,baseh,4]); */
        }
        translate([0,0,-1]) cylinder(d=dia-2*wall, h=height+stand+2); // cylinder cutout

        translate([0,0,height+stand]) cylinder(d1=dia-2*wall, d2=dia*1.25-2*wall,h=tapper+2); // tapper cutout

        for(r = [0:60:300]){
            // center hole for cables
            rotate([0,0,r]) translate([0,0,height/2]) rotate([0,90,0]) cylinder(d=10, h=dia+20);
            // M2 screw pattern in a square around cable hole
            for(x = [-8:8:8] )
                for (y = [-8:8:8]){
                    rotate([0,0,r]) translate([0,x,height/2+y]) rotate([0,90,0]) cylinder(d=m2, h=dia);
                    rotate([0,0,r]) translate([0,x,height/2+y]) rotate([0,90,0]) cylinder(d=m2head, h=dia/2-2);
                }
        }

        for(x = [0:60:300]) {
            rotate([0,0,x]) translate([0,0,height*1.5]) rotate([0,90,0]) cylinder(d=height,h=100);
            rotate([0,0,x]) translate([-50,-width/2,height*1.5]) cube([100,width,stand+tapper]);
        }
    }

    difference()
    {
        translate([-basew/2,-baseh/2,height+stand+tapper]) cube([basew,baseh,wall]);
        translate([0,0,height+stand+tapper-1]) cylinder(d=dia*1.25-2*wall-1.5, h=wall+2);

        o = 8;
        translate([basew/2-o,baseh/2-o,height+stand+tapper+4]) rotate([0,180,0]) M3(wall);
        translate([basew/2-o,-baseh/2+o,height+stand+tapper+4]) rotate([0,180,0]) M3(wall);
        translate([-basew/2+o,baseh/2-o,height+stand+tapper+4]) rotate([0,180,0]) M3(wall);
        translate([-basew/2+o,-baseh/2+o,height+stand+tapper+4]) rotate([0,180,0]) M3(wall);
    }

    /* difference()
    {
        m2 = 2.2;
        l = 27;
        translate([-25/2,-l/2, 0]) cube([25,l,2]);
        translate([4,-l/2+1.5,-1]) cylinder(d=m2, h=4);
        translate([-4,-l/2+1.5,-1]) cylinder(d=m2, h=4);
        translate([4,l/2-1.5,-1]) cylinder(d=m2, h=4);
        translate([-4,l/2-1.5,-1]) cylinder(d=m2, h=4);
    } */
    //color("red") translate([4,12,0]) cylinder(d=1, h=5); // test

    // vice interface start -----------------------------------------------
    /* len = height + 30;
    drum = 20;
    cylinder(d=drum, h=height);
    translate([0,0,height]) cylinder(d1=drum, d2=11, h=10);
    cylinder(d=11, h=len);
    difference() {
        translate([0,0,len]) sphere(d=22);
        translate([0,0,len+8]) cylinder(d=40, h=20);
    } */

    /* for (r = [30:120:270])
        rotate([0,0,r]) translate([0,-2,0]) cube([dia/2, 4, height]); */

    // vice stop --------------------------------------------------------

    /* rotate([0,0,0]) translate([-dia/2+4, 0, 0])
    difference()
    {
        translate([0,-2,0]) cube([dia-8, 4, height]);
        translate([0,0,height/2]) scale([1.5,1,1]) sphere(d=10);
        translate([dia-8,0,height/2]) scale([1.5,1,1]) sphere(d=10);
        translate([(dia-8)/2,0,height/2]) sphere(d=20);
    } */

    /* for(x = [30:60:330]) rotate([0,0,x]) translate([dia/2-6, 0,0]) m3screwmount(height,8); */
}

dia = 75;
ring(dia);

// legs
/* for (x = [0:60:300]){
    rotate([0,0,x]) translate([dia/2, 0,34/2]) {
        rotate([0,0,-90]) f3();
        translate([42,-1,-21]) rotate([0,90,0]) ax12();
    }
} */
