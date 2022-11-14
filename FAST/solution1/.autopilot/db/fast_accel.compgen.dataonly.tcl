# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
img_in { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
threshold { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 28
	offset_end 35
}
img_out { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 36
	offset_end 47
}
rows { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
cols { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
ap_local_deadlock { 
	dir O
	width 1
	depth 1
	mode ap_none
	offset -1
	offset_end -1
}
}
dict set axilite_register_dict control $port_control


