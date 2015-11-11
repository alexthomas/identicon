module Identicon
  
  class Color
    
    attr_reader :html_color, :red, :blue, :green, :hue, :saturation, :lightness
    
    def initialize(html_color)
      @html_color = html_color[1..-1]
      puts "html color: #{@html_color}"
      to_rgb
    end
    
    def to_rgb
      rgb_array = html_color.scan(/../)
      @red ||= rgb_array[0].to_i(16)
      @green ||= rgb_array[1].to_i(16)
      @blue ||= rgb_array[2].to_i(16)
    end
    
    def to_hsl
      
    end
    
    def hsl_to_rgb
      
    end
    
  end
end