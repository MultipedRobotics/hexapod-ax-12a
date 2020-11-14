$fn=90;

difference(){
    cylinder(d=100, h=5);
    translate([0,0,-5]) cylinder(d=30, h=40);
}

for (angle = [0,45,90,135,180,270]){
    rotate([0,0,angle]) translate([40,0,0]) sphere(d=10);
}
