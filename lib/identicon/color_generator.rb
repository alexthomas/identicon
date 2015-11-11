module Identicon
  
  module ColorGenerator
    
    def self.random
      html_color = (rand*0xFFFFFF).floor.to_s(16).ljust(6,'0')
      Identicon::Color.new("##{html_color}")
    end
    
    def opacity
      
    end
    
    def map(value, v_min, v_max, d_min, d_max) # v for value, d for desired
      v_value = value.to_f # so it returns float

      v_range = v_max - v_min
      d_range = d_max - d_min
      (v_value - v_min) * d_range / v_range + d_min
    end
  end
  
end