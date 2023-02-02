users = [
    {username: 'test1', password:'pass1'},
    {username: 'test2', password:'pass2'},
    {username: 'test3', password:'pass3'},
    {username: 'test4', password:'pass4'},
]

puts 'Welcome to Authenticator CLI'
28.times { print "-" }
print "\n"

puts 'This tool relies on user input'
puts 'If the entered password is correct then user object will be displayed.'

print "Username: "
user = gets.chomp

print "Password: "
pass = gets.chomp
