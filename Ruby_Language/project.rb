
# my_password = BCrypt::Password.create("my password")

# puts my_password.version
# puts my_password.cost
# puts my_password == "my password"
# puts my_password == "not my password"

# my_password = BCrypt::Password.new("$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa")
# puts my_password == "my password"
# puts my_password == "not my password"


module Crud
    require 'bcrypt'
    puts 'Module crud activated'

    def create_hash(pass)
        return BCrypt::Password.create(pass)
    end


    def verify_hash(pass)
        return BCrypt::Password.new(pass)
    end


    def create_secure_users(user_list)
        user_list.each do | user |
            user[:password] = create_hash(user[:password])
        end
    end


    def authenticate(username, pass, users)
        users.each do | user |
            if user[:username] == username && verify_hash(user[:password]) == pass
                return user
            end
        end
        "Credentials were incorrect"
    end

end