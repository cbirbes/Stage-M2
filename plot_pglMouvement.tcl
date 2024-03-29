
#plot_bonds top 100 gray Opaque 0.8 1.4
#plot_bonds top 101 cyan Opaque 0.8 1.4
#plot_bonds top 102 yellow Opaque 0.8 1.4
#plot_bonds top 103 ochre Opaque 0.8 1.4
#plot_bonds top 104 tan Opaque 0.8 1.4
#plot_lip top "resname DIM" DIM silver Opaque 0.6 0.8 10

proc plot_bonds {molid resid color material radius_bond radius_sphere cutoff} {

	#set list_name [[atomselect $molid "resid $resid"] get name]
	set coord_GB1 [measure center [atomselect $molid "resid $resid and name GB1"]]
	set coord_C1A [measure center [atomselect $molid "resid $resid and name C1A"]]
	set coord_C2A [measure center [atomselect $molid "resid $resid and name C2A"]]
	set coord_C3A [measure center [atomselect $molid "resid $resid and name C3A"]]
	set coord_C4A [measure center [atomselect $molid "resid $resid and name C4A"]]
	set coord_C5A [measure center [atomselect $molid "resid $resid and name C5A"]]
	set coord_C6A [measure center [atomselect $molid "resid $resid and name C6A"]]
	set coord_C7A [measure center [atomselect $molid "resid $resid and name C7A"]]
	set coord_C8A [measure center [atomselect $molid "resid $resid and name C8A"]]
	set coord_C9A [measure center [atomselect $molid "resid $resid and name C9A"]]
	set coord_CXA [measure center [atomselect $molid "resid $resid and name CXA"]]
	set coord_B1 [measure center [atomselect $molid "resid $resid and name B1"]]
	set coord_B2 [measure center [atomselect $molid "resid $resid and name B2"]]
	set coord_B3 [measure center [atomselect $molid "resid $resid and name B3"]]
	set coord_GL1 [measure center [atomselect $molid "resid $resid and name GL1"]]
	set coord_C1B [measure center [atomselect $molid "resid $resid and name C1B"]]
	set coord_C2B [measure center [atomselect $molid "resid $resid and name C2B"]]
	set coord_C3B [measure center [atomselect $molid "resid $resid and name C3B"]]
	set coord_C4B [measure center [atomselect $molid "resid $resid and name C4B"]]
	set coord_C5B [measure center [atomselect $molid "resid $resid and name C5B"]]
	set coord_C6B [measure center [atomselect $molid "resid $resid and name C6B"]]
	set coord_C7B [measure center [atomselect $molid "resid $resid and name C7B"]]
	set coord_GL2 [measure center [atomselect $molid "resid $resid and name GL2"]]
	set coord_C1C [measure center [atomselect $molid "resid $resid and name C1C"]]
	set coord_C2C [measure center [atomselect $molid "resid $resid and name C2C"]]
	set coord_C3C [measure center [atomselect $molid "resid $resid and name C3C"]]
	set coord_C4C [measure center [atomselect $molid "resid $resid and name C4C"]]
	set coord_C5C [measure center [atomselect $molid "resid $resid and name C5C"]]
	set coord_C6C [measure center [atomselect $molid "resid $resid and name C6C"]]
	set coord_C7C [measure center [atomselect $molid "resid $resid and name C7C"]]

	
	graphics $molid material $material
	
	#create sphere	
	graphics $molid color pink
	graphics $molid sphere $coord_GB1 radius 1.4 resolution 23
	
	graphics $molid color orange
	graphics $molid sphere $coord_B1 radius 1.4 resolution 23
	graphics $molid sphere $coord_B2 radius 1.4 resolution 23
	graphics $molid sphere $coord_B3 radius 1.4 resolution 23
	
	graphics $molid color red
	graphics $molid sphere $coord_C7C radius 1.4 resolution 23	
	graphics $molid sphere $coord_C7B radius 1.4 resolution 23
	
	graphics $molid color green
	graphics $molid sphere $coord_C3A radius 1.1 resolution 23


	graphics $molid color silver
	graphics $molid sphere $coord_GL1 radius 0.4 resolution 23
	graphics $molid sphere $coord_GL2 radius 0.4 resolution 23
	graphics $molid sphere $coord_C8A radius 0.4 resolution 23
	graphics $molid sphere $coord_C9A radius 0.4 resolution 23
	graphics $molid sphere $coord_CXA radius 0.4 resolution 23
	graphics $molid sphere $coord_C2A radius 0.4 resolution 23
	graphics $molid sphere $coord_C4A radius 0.4 resolution 23
	graphics $molid sphere $coord_C5A radius 0.4 resolution 23
	graphics $molid sphere $coord_C6A radius 0.4 resolution 23
	graphics $molid sphere $coord_C7A radius 0.4 resolution 23
	graphics $molid sphere $coord_C2B radius 0.4 resolution 23
	graphics $molid sphere $coord_C3B radius 0.4 resolution 23
	graphics $molid sphere $coord_C4B radius 0.4 resolution 23
	graphics $molid sphere $coord_C5B radius 0.4 resolution 23
	graphics $molid sphere $coord_C6B radius 0.4 resolution 23
	graphics $molid sphere $coord_C2C radius 0.4 resolution 23
	graphics $molid sphere $coord_C3C radius 0.4 resolution 23
	graphics $molid sphere $coord_C4C radius 0.4 resolution 23
	graphics $molid sphere $coord_C5C radius 0.4 resolution 23
	graphics $molid sphere $coord_C6C radius 0.4 resolution 23
	graphics $molid sphere $coord_C1A radius 0.4 resolution 23
	graphics $molid sphere $coord_C1B radius 0.4 resolution 23
	graphics $molid sphere $coord_C1C radius 0.4 resolution 23


	#create bonds
	set distance [veclength [vecsub $coord_GB1 $coord_C1A ]]
	if {$distance < $cutoff} {graphics $molid cylinder $coord_GB1 $coord_C1A radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C1A $coord_C2A ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C1A $coord_C2A radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C2A $coord_C3A ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C2A $coord_C3A radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C3A $coord_C4A ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C3A $coord_C4A radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C4A $coord_C5A ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C4A $coord_C5A radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C5A $coord_C6A ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C5A $coord_C6A radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C6A $coord_C7A ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C6A $coord_C7A radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C7A $coord_CXA ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C7A $coord_CXA radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C8A $coord_C9A ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C8A $coord_C9A radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C9A $coord_CXA ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C9A $coord_CXA radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C8A $coord_CXA ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C8A $coord_CXA radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_CXA $coord_B2 ]]
	if {$distance < $cutoff} {graphics $molid cylinder $coord_CXA $coord_B2 radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_B2 $coord_B1 ]]                         
	if {$distance < $cutoff} {graphics $molid cylinder $coord_B2 $coord_B1 radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_B2 $coord_B3 ]]                         
	if {$distance < $cutoff} {graphics $molid cylinder $coord_B2 $coord_B3 radius 0.3 resolution 23 filled yes}

	set distance [veclength [vecsub $coord_C3A $coord_GL1 ]]
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C3A $coord_GL1 radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_GL1 $coord_C1B ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_GL1 $coord_C1B radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C1B $coord_C2B ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C1B $coord_C2B radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C2B $coord_C3B ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C2B $coord_C3B radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C3B $coord_C4B ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C3B $coord_C4B radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C4B $coord_C5B ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C4B $coord_C5B radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C5B $coord_C6B ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C5B $coord_C6B radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C6B $coord_C7B ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C6B $coord_C7B radius 0.3 resolution 23 filled yes}
                                                                                    
	set distance [veclength [vecsub $coord_C3A $coord_GL2 ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C3A $coord_GL2 radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_GL2 $coord_C1C ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_GL2 $coord_C1C radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C1C $coord_C2C ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C1C $coord_C2C radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C2C $coord_C3C ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C2C $coord_C3C radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C3C $coord_C4C ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C3C $coord_C4C radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C4C $coord_C5C ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C4C $coord_C5C radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C5C $coord_C6C ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C5C $coord_C6C radius 0.3 resolution 23 filled yes}
	set distance [veclength [vecsub $coord_C6C $coord_C7C ]]                        
	if {$distance < $cutoff} {graphics $molid cylinder $coord_C6C $coord_C7C radius 0.3 resolution 23 filled yes}
}

proc plot_lip {molid sel lip color material radius_bond radius_sphere cutoff} {

	set list_res [lsort -integer -unique [[atomselect top $sel] get resid]]
	set counter 18
	if {$lip=="PGL"} {
		foreach resid $list_res {
			#set color [expr $counter % 32]
			plot_bonds $molid $resid $color $material $radius_bond $radius_sphere $cutoff
			set counter [expr $counter + 1]
		}
	}


}
