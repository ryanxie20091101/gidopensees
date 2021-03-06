proc RigidDiaphragmClear { } {

	global RDIDList
	set RDIDList " "

	return 0
}

proc CheckrigidDiaphragmID { IDnum } {

	global RDIDList
	set pos [lsearch $RDIDList $IDnum]

	return $pos
}

proc AddRigidDiaphragmID { IDnum } {

	global RDIDList
	lappend RDIDList $IDnum

	return 0
}

proc RDID { index } {

	global RDIDList
	set IDnum [lindex $RDIDList [expr $index-1]]

	return $IDnum
}

proc HowmanyRD { } {

	global RDIDList
	set quantity [llength $RDIDList]

	return $quantity
}

proc RDMasterNodeNumber { index } {

	global RDIDList
	set MNodeNumber [lindex $RDIDList [expr $index-1]]

	return $MNodeNumber
}

proc IsThisRDID { id index } {

global RDIDList

	if {$id == [lindex $RDIDList [expr $index-1] ] } {

		return 1
	}

return 0

}