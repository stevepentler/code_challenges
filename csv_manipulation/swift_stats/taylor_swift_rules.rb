require 'pry'

class TSwiftRulez
  attr_reader :path

  def initialize(path)
    @path = path
  end 

  def sanitize
    input.split.uniq
  end

  def delete_extraneous
    sanitize.delete_if do |x|
      %w(a for to and The the And, The, the, Georgia, truck, Chevy).include?(x)
    end
  end 

  def count_t_rucks
    input.split.count { |w| w == "truck" || w == "Truck" || w == "Chevy" || w == "t-ruck" || w == "pickup" || w == "pick-up" || w == "4WD"}
  end 

  def count_baby
    input.split.count { |w| w == "baby" || w == "Baby" || w == "BAE" || w == "heart"}
  end  

  def input 
    File.read(path)
  end

end