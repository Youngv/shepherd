require 'builder'
require '~/Desktop/Victor/string_extensions'
class Simple
  def initialize
    @lines = []
    @user = 0
    @name = []
    @age = []
    @number = []
    @nickname = []
  end

  def read_file(simple_file_name)
    if File.extname(simple_file_name) =~ /(simple)/i
      puts %q(#######THIS IS THE .SIMPLE FILE########).green
      File.open(simple_file_name).each {|line| puts line}
      @lines = File.readlines(simple_file_name)
      read_data_of_each_line
      puts "\n"
      puts %q(#######CONVERT .SIMPLE FILE TO .XML FILE########).green
      convert_to_xml
    else
      puts simple_file_name.red + " is not a .simple file!".red
    end
  end

  def read_data_of_each_line
    @lines.each do |line|
      if line =~ /(user)\s(id=')\d(')/
        @user += 1
      elsif line =~ /(name)\s\w+/
        @name << line[9, line.length - 9].delete("\n")
      elsif line =~ /(age)\s\d+/
        @age << line[8, line.length - 8].delete("\n")
      elsif line =~ /(number)\s\d+/
        @number << line[11, line.length - 11].delete("\n")
      elsif line =~ /(other tag='nickname')\s\w+/
        @nickname << line[25, line.length - 25].delete("\n")
      end
    end
  end

  def convert_to_xml
    x = Builder::XmlMarkup.new(:target=> "", :indent => 2)
    x.xml {
      1.upto(@user) do |i|
        x.user("id" => i) {
          x.name(@name[i-1])
          x.age(@age[i-1])
          x.number(@number[i-1])
          x.other(@nickname[i-1], "tag" => "nickname")
        }
      end
    }
    p x
    xml = File.open("output.xml", "w+")
    xml << x
  end
end

simple = Simple.new
simple.read_file("example.simple")