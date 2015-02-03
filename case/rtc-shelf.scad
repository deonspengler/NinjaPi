//number of fragments
$fn=28;
cube([30,25,2]);

translate([2.5,2.5,2]){
    cylinder(h=3,r=1.5);
}

translate([27,22.5,2]){
    cylinder(h=3,r=1.5);
}

translate([-6,19,0]){
    difference(){
        cube([6,6,2]);
        translate([3,3,-1]){
            cylinder(h=4,r=1.5);
        }
    }
}
