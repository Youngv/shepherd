class MandelbrotController < ApplicationController
  def index
  end
  def ruby
    @ruby_mandelbrot = Mandelbrot.new
    @ruby_mandelbrot.new_png
    @ruby_mandelbrot.draw
    @ruby_mandelbrot.png
  end

  def save
    unless params[:canvas].empty?
      data =  params[:canvas]
      image_data = Base64.decode64(data[22..-1]) #22 is the length of "data:image/png;base64,"
      send_data image_data, :type => 'image/png', :disposition => "attachment",:filename => "mandelbrot.png"
    end
  end
end
