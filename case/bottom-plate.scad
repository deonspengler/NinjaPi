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
translate([0,21,0]){
    cube([88,3,8]);
}

// back wall left
translate([88,21,0]){
    cube([3,14,8]);
}

// back wall right
translate([88,60,0]){
    cube([3,20,8]);
}

//oled wall
translate([45,5,0]){
    cube([10,3,18]);
}