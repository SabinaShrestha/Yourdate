class Parser
  def parse
    puts 'The Parser class received the parse method'
  end
end

class XmlParser
  def initialize(parser)
    @parser = parser
  end

  def parse
    @parser.parse
    puts 'A instance of the XmlParser class received the parse message'
  end
end

class JsonParser
  def initialize(parser)
    @parser = parser
  end

  def parse
    puts 'An instance of the JsonParser class received the parse message'
    @parser.parse
  end
end

puts 'Using the XmlParser'
# XmlParser.new(Parser.new).parse
parser = Parser.new
XmlParser.new(parser).parse

puts 'Using the JsonParser'
# JsonParser.new(Parser.new).parse
JsonParser.new(parser).parse

puts 'Using both Parsers!'
# Jsonparser.new(XmlParser.new(Parser.new)).parse
JsonParser.new(XmlParser.new(parser)).parse
