#put welcome page on here




#---------------



def print_options
    puts "1. Make new password or username."
    puts "2. Add a profile."
    puts "3. View Profiles (passwords and usernames)."
    puts "4. Auto-generate a password or username"
    puts "5. Exit out of this application"
    print "Input 1 through 5 to visit corresponding area."
    opt = gets.chomp
    return opt 
end 



def print_profiles(profile_hasharray)
    puts "These are the current profiles: "
    profile_hasharray.each {|profile, username, password| puts "#{profile}: #{username} #{password}" }
end

def input_user_up (profile_hasharray)
    print "What profile name would you like to give this password?"
    prof = gets.chomp
    print "What would you like your username to be?"
        user_inp_usrname = gets.chomp
    print "Lastly what would you like your password to be?"
        user_inp_pass = gets.chomp
    profile = {name: prof, username: user_inp_usrname, password: user_inp_pass} 

    profile_hasharray.push(profile)
    print_profiles(profile_hasharray)
end




profile_hasharray = [{name: "Yournamehere", username: "exampleuser", password: "examplepass"}, {name: "secondexample", username: "examptwo", password: "example"} ]

    option = ""
    while option != "5"
        system "clear"
        option = print_options
    
        case option
            when "1"
                #print_menu(hash_products)
            when "2"
                input_user_up(profile_hasharray)
            when "3"
                print_profiles(profile_hasharray)
            when "4"
                #edit_delete_product(hash_products, "delete")
            when "5"
                next
            else
                puts "invalid option"
        end
        puts "press Enter to continue..."
        gets
        system "clear"
    end
    puts "Goodbye!"


