//number of fragments
$fn=20;

difference() {
    cube([108.5,81,2]);

    // air vents
    for(i=[0:9]){
        hull(){
            translate([9.50+(i*10),10,-1]){
                cylinder(r=1,h=4);
            }
            translate([9.50+(i*10),71-1]){
                cylinder(r=1,h=4);
            }
        }
    }
}