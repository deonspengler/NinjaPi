//number of fragments
$fn=64;

difference(){
    // outer shell
    roundedcube(112,86,40,3);

    // internal cavity
    translate ([2,2,2]){
        cube ([108,82,40]) ;
    }

    // oled window
    translate ([21,-1,7]) {
        cube ([70,4,26]) ;
    }

    // ethernet
    translate ([109,65,21]){
        cube ([4,16,12]) ;
    }

    // usb ports
    translate([109, 33, 27]){
        cube ([4,13,6]) ;
    }
    translate([109, 49, 27]){
        cube ([4,13,6]) ;
    }

    // A/V jack
    translate([78,87,32]){
        rotate([90,0,0]){
            cylinder(h=4,r=3);
        }
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
