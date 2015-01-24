//number of fragments
$fn=64;

difference(){
    // outer shell
    roundedcube(112.50,85,40,4);

    // internal cavity
    translate([2,2,2]){
        cube([108.5,81,40]);
    }

    // oled window
    translate([20.75,-1,6.50]){
        cube([71,4,27]);
    }

    // ethernet
    translate([109,64,22]){
        cube([4,16,12]) ;
    }

    // usb ports
    translate([109,27.50,27.50]){
        cube([4,15,6.50]);
    }
    translate([109,46,27.50]){
        cube([4,15,6.50]);
    }

    // A/V jack
    translate([76.50,86,31]){
        rotate([90,0,0]){
            cylinder(h=4,r=3);
        }
    }

    // hdmi
    translate([46.50,82,28]){
        difference(){
            cube([16,4,6.50]);
            translate([-2.10,0,6.50]){
                rotate([0,45,0]){
                    cube([3,4,3]);
                }
            }
            translate([13.8,0,6.50]){
                rotate([0,45,0]){
                    cube([3,4,3]);
                }
            }
        }
    }

    // power connector
    translate([28.25,82,31]){
        cube([9.50,4,3.5]) ;
    }
}

module roundedcube(xdim,ydim,zdim,rdim){
    hull(){
        translate([rdim,rdim,0])cylinder(r=rdim,h=zdim);
        translate([xdim-rdim,rdim,0])cylinder(r=rdim,h=zdim);
        translate([rdim,ydim-rdim,0])cylinder(r=rdim,h=zdim);
        translate([xdim-rdim,ydim-rdim,0])cylinder(r=rdim,h=zdim);
    }
}
