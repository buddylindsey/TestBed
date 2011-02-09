require 'yaml'

# setup an object to serialize with yaml
class Square
  attr_accessor :width, :height, :bonus, :me
  def initialize width, height
    @width = width
    @height = height
    @bonus = ['yo',{:msg => 'YAML 4TW', :alert => 'I am an alert'}]
    @me = self
  end
end

# seriallize a square object for use below
square = Square.new(2,3)
serialized = square.to_yaml

# save yaml to file
File.open('main.yaml', 'w') do |out|
  YAML.dump(square, out)
end


# Out putting yaml when we serialize it in memory
puts 'YAML Output via inmemory converstion to YAML'

new_obj = YAML::load(serialized)
puts new_obj.width.to_s
puts new_obj.height.to_s
puts new_obj.bonus[0]
puts new_obj.bonus[1][:msg]
puts new_obj.bonus[1][:alert]

# Output when we pull from yaml file
puts "YAML Output pulled from a file"

new_obj = YAML::load(File.open('main.yaml'))
puts new_obj.width.to_s
puts new_obj.height.to_s
puts new_obj.bonus[0]
puts new_obj.bonus[1][:msg]
puts new_obj.bonus[1][:alert]
