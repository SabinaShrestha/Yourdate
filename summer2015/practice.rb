
# square_rotated = [
#       [0, 0, 0, 0],
#       [0, 1, 1, 0],
#       [1, 1, 0, 0],
#       [0, 0, 0, 0]
#     ]


  
    first = [
  [0, 1, 0, 0],
  [0, 1, 1, 0],
  [0, 0, 1, 0],
  [0, 0, 0, 0]
  ]

  # first.each do |row|
  #   row.each do |element|
  #    puts element.rotate(1)
  #  end
  # end


    # first.each do |row|
    #     puts row.inspect
    # end
  #   r =[]
  # r.push(first[0][0])
  # r.push(first[1][0])
  # r.push(first[2][0])
  # r.push(first[3][0])
  # #
  
  #  s =[]
  # s.push(first[0][1])
  # s.push(first[1][1])
  # s.push(first[2][1])
  # s.push(first[3][1])
  # #

  #  t =[]
  # t.push(first[0][2])
  # t.push(first[1][2])
  # t.push(first[2][2])
  # t.push(first[3][2])
  # #

  #  u =[]
  # u.push(first[0][3])
  # u.push(first[1][3])
  # u.push(first[2][3])
  # u.push(first[3][3])
  # #

  # convert = [u, t, s, r]
  # puts convert.inspect

  row = 0
  col = 0
  array = []

  # for a <= 16
    row = 0 
 col = 0 
 array =[]

   while true 
   array << first[row][col]
   row+=1
     if row == 4
     row = 0
     col +=1
     end
     if col == 4
       break
     end
   end
 end
end

while true 
  for row < 5
    array << first[row][col]
    row += 1
  end

    



  




