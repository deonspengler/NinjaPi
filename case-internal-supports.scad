//number of fragments
$fn=28;

difference(){
    union(){
        translate([0.5,-2.5,0]){
            cube([84.50,7,2]);
        }
        translate([78,0,0]){
            cube([7,67,2]);
        }
        translate([61.5,0,0]){
            cube([7,67,2]);
        }
        translate([62,60,0]){
            cube([22,7,2]);
        }
        translate([3,0,0]){
            cube([6,18,2]);
        }
    }
    
    translate([4,1,-1]){
        cylinder(h=4,r=1.5);
    }
    translate([81,1,-1]){
        cylinder(h=4,r=1.5);
    }
    translate([81,63,-1]){
        cylinder(h=4,r=1.5);
    }
}

//front bottom
translate([65,15,0]){
    cylinder(h=23,r=3);
}
translate([65,15,0]){
    cylinder(h=26,r=1.5);
}

//back bottom
translate([6,15,0]){
    cylinder(h=22,r=3);
}
translate([6,15,0]){
    cylinder(h=25,r=1.5);
}

//front top
translate([65,64,0]){
    cylinder(h=23,r=3);
}
translate([65,64.5,0]){
    cylinder(h=26,r=1.5);
}