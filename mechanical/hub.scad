$fn=90;


m2head = 4.62;
m2 = 2.2;

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
    width = 20;
    wall = 4;
    difference()
    {
        union(){
            cylinder(d=dia, h=height);
            for(x = [0:60:300]) {
                rotate([0,0,x]) translate([dia/2-4,-height/2,0]) cube([4,height,height]);
            }
        }
        translate([0,0,-1]) cylinder(d=dia-8, h=height+2);

        for(r = [0:60:300]){
            rotate([0,0,r]) translate([0,0,height/2]) rotate([0,90,0]) cylinder(d=10, h=dia+20);
            for(x = [-8:8:8] )
                for (y = [-8:8:8]){
                    rotate([0,0,r]) translate([0,x,height/2+y]) rotate([0,90,0]) cylinder(d=m2, h=dia);
                    rotate([0,0,r]) translate([0,x,height/2+y]) rotate([0,90,0]) cylinder(d=m2head, h=dia/2-2);
                }
        }
    }

    for(x = [30:60:330]) rotate([0,0,x]) translate([dia/2-6, 0,0]) m3screwmount(height,8);
}

dia = 75;
ring(dia);

// legs
/* for (x = [0:60:300]){
    rotate([0,0,x]) translate([dia/2, 0,25/2]) {
        rotate([0,0,-90]) f3();
        translate([42,-1,-21]) rotate([0,90,0]) ax12();
    }
} */
/* ax12(); */
