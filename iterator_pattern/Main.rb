require "./ArrayIterator"

array = ['red', 'green', 'blue']
i = ArrayIterator.new(array)

while i.has_next?
  puts("item: #{i.next_item}")
end

def for_each_element(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

a = [10, 20, 30]
for_each_element(a) {|element| puts("The element is #{element}")}
a.each {|element| puts("The element is #{element}")}

a = [ 'joe', 'sam', 'george' ]
puts a.all? {|element| element.length < 4}