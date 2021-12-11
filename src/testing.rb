class USERPASS
puts "would you like to make a password? Input 'y' to continue."
answer = gets.chomp
if answer == "y"
    loop do
        keys_lns = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz?/\\ |}{[]!@# $%^&*()1234567890_-+=<>,.`~'':;".split(//)
            password_u = ""
            puts "Passwords are hard to remember. Pick a theme to help! What theme would you like?:"
        theme = gets.chomp
        puts "How long would you like your password to be?(Must be longer than the theme as that theme is part of the password!):"
        passwordlength = gets.chomp.to_i
            if passwordlength > theme.length  
              passwordlength -= theme.length
              password_u += theme
             while passwordlength > 0
            password_u += keys_lns.sample
             passwordlength -= 1
         end
         puts "This is your new password: " + password_u
         break
        else
          puts "Can't use the theme since password length is shorter than the theme."
        end
    end
else
        puts "okay bye"
        
    end
end



print "What profile name would you like to give this password?"
    prof = gets.chomp
print "What would you like your username to be?"
    user_inp_usrname = gets.chomp
print "Lastly what would you like your password to be?"
    user_inp_pass = gets.chomp
profile = {name: prof, username: user_inp_usrname, password: user_inp_pass}

profile_hasharray.push(profile)
print_profiles(hasharray)




profile_hasharray = [{name: "Yournamehere", username: "exampleuser", password: "examplepass",{name: "secondexample", username: "examptwo", password:"example"}]
=begin to push this into a file--------------------@@@@@
def add_product(array_of_hashes)

    print "What's the name of the new product? "
    n = gets.chomp
    print "What's the price of #{n}? "
    p = gets.chomp.to_f
    product = {name: n, price: p}
    
    array_of_hashes.push(product)
    print_menu(array_of_hashes)
end 
=end 

Need to give them a name then push all of the above into that name / bank of data (array?) 

#products.each {|key, value| puts "#{key} is $#{value}" }
puts products
products.each do |product, price|
   puts "#{product} is $#{price}"
end
