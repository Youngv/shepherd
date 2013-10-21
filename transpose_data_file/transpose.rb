class Input
  def initialize
    @lines = []
    @new_lines = []
    @output_lines = []
  end

  def read_input_file(filename)
    puts %q(###INPUT DATA###)
    File.open(filename).each {|line| puts line}
    puts "\n"
    @lines = File.readlines(filename)
  end

  def transpose_data
    longest_line = @lines[0].length
    @lines.each do |line|
      longest_line = (line.length < longest_line)?(longest_line):(line.length)
    end
    1.upto(longest_line - 1) do |i|
      1.upto(@lines.length) do |j|
        @new_lines << @lines[j-1][i-1]
      end
      @output_lines << @new_lines[@lines.length*(i-1), @lines.length].join
    end
    puts %q(###OUTPUT DATA###)
    puts @output_lines
    puts "\n"
  end

  def save_to_output
    File.open("output", "w") do |file|
      1.upto(@output_lines.length) do |i|
        file.puts @output_lines[i-1]
      end
    end
    #IO.write("output", "0123456789", mode: 'w:UTF-16LE')
  end
end

input =  Input.new
input.read_input_file("input")
input.transpose_data
input.save_to_output
