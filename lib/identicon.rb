require 'chunky_png'
require 'siphash'
require 'base64'

require 'identicon/color'
require 'identicon/color_generator'
require 'identicon/identicon_generator'
require 'identicon/version'

module Identicon
  
  DEFAULT_OPTIONS = {
    border_size: 0,
    square_size: 50,
    grid_size: 7,
    background_color: ChunkyPNG::Color::TRANSPARENT,
    key: "\x00\x11\x22\x33\x44\x55\x66\x77\x88\x99\xAA\xBB\xCC\xDD\xEE\xFF"
  }
    
  def self.generate_data_url
    
  end
  
  def self.save_to_file
    
  end
  
  def self.generate(string, opts = {})
    Identicon::IdenticonGenerator.new(string,opts).generate
  end
  
end
