users = [
            {username: "mashrur" , password: "passwordone"} ,
            {username: "jack" , password: "passwordtwo"} ,
            {username: "arya" , password: "passwordthree"} ,
            {username: "jonsnow" , password: "passwordfour"} ,
        ]

puts "Welcome To Authenticator"
25.times {print "-"}
puts
puts "This Program Will Take Input From Users and Compare Passwords"
puts "If Password Is Correct , You Will Get Back The User Object"

flag = true
found = false
count = 0

while flag && !found
    if count == 3
        puts "Maximum Attempt Limit Reached"
        break
    else
        print "username : "
        username = gets.chomp
        print "password : "
        password = gets.chomp
        users.each do |user|
            if user[:username] == username
                if user[:password] == password
                    puts user
                    found = true
                    break
                else
                    puts "Wrong Password"
                end
                count = count + 1
            end
        end
    end
end