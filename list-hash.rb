x = 1 .. 10

puts x.class

puts x.last, x.first

z = x.to_a.shuffle

puts (z.length)-1

puts (z.append(11))

puts (z.unshift(12))

puts z.empty?

y = []

puts y.empty?

puts z.include?(1)

puts y.push(1)

puts y.pop(1)

puts z.join(',')

print z.split

a = %w(Hi this is a test string)
print a
print "\n"

a.each do |t|
    p t + " "
end

person = {
    fname: 'Test',
    lname: 'Subject',
    age: 20,
}

puts person[:fname]

person[:age] = 22

puts person[:age]

person[:city] = 'Delhi'
p (person)


person.delete(:city)
p (person)

person.each {|k, v| puts k, v}
person.each {|k, v| puts "the key - #{k} has value - #{v}"}

