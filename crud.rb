require_relative 'project'

users = [
    {username: 'test1', password:'pass1'},
    {username: 'test2', password:'pass2'},
    {username: 'test3', password:'pass3'},
    {username: 'test4', password:'pass4'},
]

hashed_users = Crud.create_secure_users(users)
puts hashed_users