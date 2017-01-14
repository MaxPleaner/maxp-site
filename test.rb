module Foo
  include Enumerable
  def map
    puts "calling my map"
    super
  end
  def with_index
    puts "calling my index"
    super
  end
end

class MyArr < Array
  include Foo
end

puts MyArr.new([1]).map.with_index { |x, y| [x,y] }
# => [1,0]
