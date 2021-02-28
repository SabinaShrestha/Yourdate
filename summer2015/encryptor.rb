class Encryptor
  def cipher(rotation)
    # {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
    #  'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
    #  'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
    #  'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
    #  'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
    #  'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
    #  'y' => 'l', 'z' => 'm'}
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
   end

  def encrypt_latter(latter, rotation)
    # lowercase_latter = latter.downcase
    # cipher[lowercase_latter]
    #rotation = 13
    cipher_for_rotation = cipher(rotation)
    cipher_for_rotation[latter]
  end

  def encrypt(string, rotation)
    # 1. cut the input sting into latters
    latters = string.split("")
    # 2. encrypt those latters one at a time, gathering the resullts
    results = [] # creates a new empty array.
      # latters.each do |latter|# take each latter from latters and for each 
      # encrypted_latter = encrypt_latter(latter)  #call encrypt_latter method and store the result in encrypted_latter
      # results.push(encrypted_latter) # push "add" each value of encrypted_latter in results
    latters.collect do |latter|
      results << encrypt_latter(latter, rotation)

    end
    # 3. join the results back together in one string
    @encrypted = results.join.to_s
  end
  
  def decrypt(string, rotation)
    rotation *= -1
    encrypt(string, rotation)
  end

  def encrypt_file(filename, rotation)
    # 1.create the file handle to the input file
    input = File.open(filename, "r")
    fopen = input.read
    encrypt(string, rotation)
    # 2.read the text of the input filehandle
    # 3.encrypt the text  
    # 4.create a name for the output filehandle
    # 5.create an output file handle
    # 6.write out the text
    # 7.close the file
  end
end