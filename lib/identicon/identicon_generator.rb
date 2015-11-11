module Identicon
  
  class IdenticonGenerator
    
    attr_reader :base_color, :image, :seed, :options
    
    def initialize(data, _options = {})
      @options = DEFAULT_OPTIONS.merge(_options)
      @seed = SipHash.digest(options[:key], data)
      @base_color = base_color? ? Identicon::Color.new(base_color) : Identicon::ColorGenerator.random
      
    end
    
    def base_color?
      options.try(:base_color)
    end
    
    def width
      dimension
    end
    
    def height
      dimension
    end
    
    def dimension
      (options[:border_size] * 2) + (options[:square_size] * options[:grid_size])
    end

    def generate
      @image = ChunkyPNG::Image.new width, height, options[:background_color]
      
      gridx = gridy = 0
      (options[:grid_size] * options[:grid_size]).times do |i|
        xpos = options[:border_size] + (gridx * options[:square_size])
        ypos = options[:border_size] + (gridy * options[:square_size])
        
        opacity = (seed & 255)
        sqcolor = Identicon::ColorGenerator.random
        color = ChunkyPNG::Color.rgba(sqcolor.red,sqcolor.green,sqcolor.blue, opacity)
        image.rect(xpos+1, ypos+1, (xpos + options[:square_size]-1), (ypos + options[:square_size]-1),0, color)
        gridx+=1
        if(gridx.eql?(options[:grid_size]))
          gridx = 0
          gridy+=1
        end
        
        @seed >>= 1
      end
      image
    end
  end
end