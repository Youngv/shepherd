class LCD
  attr_accessor :number, :color, :size
  @@numbers = [
"
 --
|  |
|  |

|  |
|  |
 --
","
   |
   |

   |
   |
","
 --
   |
   |
 --
|
|
 --
","
 --
   |
   |
 --
   |
   |
 --
","
|  |
|  |
 --
   |
   |
","
 --
|
|
 --
   |
   |
 --
","
 --
|
|
 --
|  |
|  |
 --
  ","
 --
|  |
|  |

   |
   |
  ","
 --
|  |
|  |
 --
|  |
|  |
 --
  ","
 --
|  |
|  |
 --
   |
   |
 --
  "]
  def initialize
    @number = number
  end

  def lcd_number(number)
    x = number.to_s.split(//)
    (0..x.length-1).each do |i|
      (0..9).each do |j|
        if x[i].to_i == j
          puts @@numbers[j]
        end
      end
    end
  end
end

lcd = LCD.new
lcd.lcd_number(ARGV[0])
