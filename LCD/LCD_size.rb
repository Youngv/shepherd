require '~/Desktop/Victor/string_extensions'

class LCD
  attr_accessor :number, :color, :size
  @@shape = [" -- ", "|  |","   |","|   ", "    "]
  @@numbers = [[0,1,1,4,1,1,0],
               [4,2,2,4,2,2,4],
               [0,2,2,0,3,3,0],
               [0,2,2,0,2,2,0],
               [4,1,1,0,2,2,4],
               [0,3,3,0,2,2,0],
               [0,3,3,0,1,1,0],
               [0,1,1,4,2,2,4],
               [0,1,1,0,1,1,0],
               [0,1,1,0,2,2,0]]
  def initialize
    @number = number
  end

  def display(number, size, color)
    LCD.new_shape(size)
    x = number.to_s.split(//)
    0.upto(6) do |j|
      (0..x.length-1).each do |i|
        print @@shape[@@numbers[x[i].to_i][j]].delete("\n").send(color)
      end
      puts "\n"
    end
  end

  def LCD.hor_line(size)
    @@shape.each do |shape|
      shape[1] *= size.to_i + 1
    end
  end

  def LCD.ver_line(size)
    @@shape[1..3].each do |shape|
        #this is the key point
    end
  end

  def LCD.new_shape(size)
    LCD.hor_line(size)
    LCD.ver_line(size)
  end
end

lcd = LCD.new
lcd.display(ARGV[0],ARGV[1],ARGV[2])