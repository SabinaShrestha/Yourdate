class Here

  def multiple
    #create an natural number variable and empty "instance variable" an empty array
  num = 1
  @number = []
    while num < 1000 #loop to get multiples of 3 and 5 less than 1000
      if num % 3 == 0 || num % 5 == 0
        #passing values in the empty array.
        @number << num
      end
      #incrementing the value of num by 1.
      num += 1
    end
    # p @number 
    return self
  end

  def sum
    result = 0
    @number.each_with_index do |value, index|  # taking each element of the array
      #add value in x with the value 1 index greeter then index of x. 
      result += value + @number[index + 1] unless index + 1 >= @number.length
    end 
    p result
    return self
  end
end




sabina = Here.new
sabina.multiple
sabina.sum