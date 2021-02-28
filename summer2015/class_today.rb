
first = [
  [0, 1, 0, 0],
  [0, 1, 1, 0],
  [0, 0, 1, 0],
  [0, 0, 0, 0]
  ]

col = 0
m = []
rotated_array = []
  while col < 4 do
    m << first.map{|row| row[col]}
    col += 1
  end


  rotated_array = m.reverse
  rotated_array.map {|row| puts row.inspect}

