//number of fragments
$fn=28;

difference() {
    // base
    cube([117,80,2]);

    // air vents
    for(i=[1:10]){
        translate([5+(i*9.75),10,-1]){
            cube([2,61,4]);
        }
    }
}

// center spine
translate([0,35.25,0]){
    cube([108.50,10,2]);
}

// side wall
translate([0,21.8,0]){
    cube([88,2,8]);
}

// back wall left
translate([88,21.8,0]){
    cube([2,13.8,8]);
}

// back wall right
translate([88,60,0]){
    cube([2,20,8]);
}

//oled left
translate([16,4.5,0]){
    cube([4,2,36]);
}

translate([16,8.5,0]){
    cube([4,1,36]);
}

translate([17.5,6.5,0]){
    cube([1,2,36]);
}

//oled right
translate([95,4.5,0]){
    cube([4,2,36]);
}

translate([95,8.5,0]){
    cube([4,1,36]);
}

translate([96.5,6.5,0]){
    cube([1,2,36]);
}