require ('./sql')

$ar = $ar.split(", ")

$ar.each{|obj|
    $s = $s.sub!("?", '"' + obj + '"')
}

puts $s