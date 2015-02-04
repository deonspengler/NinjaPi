//number of fragments
$fn=28;

cube([30,25,2]);

translate([3,2.5,2]){
    cylinder(h=4,r=1.5);
}

translate([27,22,2]){
    cylinder(h=4,r=1.5);
}

translate([-8,19,0]){
    difference(){
        cube([8,6,2]);
        translate([3,3,-1]){
            cylinder(h=4,r=1.5);
        }
    }
}
