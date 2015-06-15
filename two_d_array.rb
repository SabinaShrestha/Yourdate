# This 2D array contains two sub-arrays.
values = Array[[10, 20, 30], [40, 50, 60]]

# Loop over each row array.
values.each do |x|
    # Loop over each cell in the row.
    x.each do |cell|
      puts cell  
    end
      
    # End of row.
    puts "--"
end