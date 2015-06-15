

class GenericParser

  def parse
    # raise NotImplementedError, 'You must implement the parse method'
    @x = 100
    # puts x
  end

  def scream
    puts 'AAAAAHHHHHH!'
  end


end

# person = GenericParser.new
# person.parse

class JsonParser < GenericParser

  

  def parse
    super
    y = @x + 1
    # puts 'An instance of the JsonParser class received the parse message'
    p y
      # super
    
  end

end

class XmlParser < GenericParser
  def parse
    puts 'An instance of the XmlParser class received the parse message'
  end
end