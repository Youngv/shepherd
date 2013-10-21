class Delete
  def delete_last_two_lines_of_xml_file(filename)
    File.open(filename).each {|line| puts line}
    @lines = File.readlines(filename)
    @lines.pop
    @lines.pop
    puts @lines
    xml = File.open(filename, 'w')
    xml.write(@lines.join)
  end
end

delete = Delete.new
delete.delete_last_two_lines_of_xml_file("output.xml")