require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end

  def each
    @list.each { |element| yield element if block_given? }
  end
end
list = MyList.new(1, 2, 3, 4)
# we test #all?
puts(list.all? { |e| e < 5 })
puts(list.all? { |e| e > 5 })
# we test #any?
puts(list.any? { |e| e == 2 })
puts(list.any? { |e| e == 5 })
# we test #filter?
print(list.filter(&:even?))
