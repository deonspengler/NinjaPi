difference() {
    cube([117,80,2]);

    // air vents
    for(i=[1:10]){
        translate([5+(i*9.75),10,-1]){
            cube([2,61,4]);
        }
    }
}

translate([0,35.25,0]){
    cube([108.50,10,2]);
}
