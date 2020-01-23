package provide mypkg 1.0
proc countCells {tool} {
  set cnt 0 ;
  if {$tool=="icc2"} {
    set cnt [countCells_icc2] ;
  } elseif {$tool=="innovus"} {
    set cnt [countCells_innovus] ;
  }
  return $cnt ;
}

# Fake proc
proc countCells_icc2 {} {
  return 12 ;
}
proc countCells_innovus {} {
  return 13 ;
}