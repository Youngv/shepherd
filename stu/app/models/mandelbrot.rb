class Mandelbrot
  attr_accessor :png
  def initilize
    @png
  end

  def mandelbrot(c)
    z = 0
    50.times {z = z**2 + c}
    z
  end

  def new_png
    @png = ChunkyPNG::Image.new(400, 200, bg_color = :black)
  end

  def draw
    y = -2
    100.times do
      y += 0.04
      x = -2
      100.times do
        x += 0.04
        c = Complex(x,y)
        if mandelbrot(c).abs < 2
          @png[100*x + 200, 100*y + 100] = ChunkyPNG::Color.rgb(0,255,0)
        end
      end
    end
  end
end
