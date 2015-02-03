//number of fragments
$fn=64;

difference(){
    // outer shell
    roundedcube(122,85,41,4);

    // internal cavity
    translate([2,2,2]){
        cube([118,81,40]);
    }

    // oled window
    translate([24.50,-1,7.60]){
        cube([72.50,4,25.80]);
    }

    // ethernet
    translate([119,64,23]){
        cube([4,16,12]) ;
    }

    // usb ports
    translate([119,27.50,27.5]){
        cube([4,15,7]);
    }
    translate([119,46,27.5]){
        cube([4,15,7]);
    }

    // A/V jack
    translate([86,86,32]){
        rotate([90,0,0]){
            cylinder(h=4,r=3.5);
        }
    }

    // hdmi
    translate([56.50,82,29]){
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
    translate([38.25,82,32.20]){
        cube([9.50,4,3.30]) ;
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
