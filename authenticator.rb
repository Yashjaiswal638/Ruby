def auth(username, pass, user_list)
    user_list.each do |user|
        if user[:username] == username && user[:password] == pass
            return user
        end
    end
    return 1
end

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


attempts = 1

while attempts < 4
    print "Press n to quit or any other key to continue : "
    go_ahead = gets.chomp
    break if go_ahead == 'n'

    print "Username: "
    username = gets.chomp
    
    print "Password: "
    pass = gets.chomp
    value = auth(username, pass, users)
    if value != 1
        break
    end
    attempts += 1
end
puts value if value != 1
puts 'Maximum tries exceeded' if attempts == 4
