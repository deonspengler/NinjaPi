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
    cube([87,3,7]);
}

// back wall left
translate([87,21,0]){
    cube([3,24,7]);
}

// back wall right
translate([87,58,0]){
    cube([3,22,7]);
}