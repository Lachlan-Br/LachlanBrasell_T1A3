#put welcome page on here




#---------------



def print_options
    puts "1. View Profiles (passwords and usernames)."
    puts "2. Add a profile."
    puts "3. Make new password or username."
    puts "4. Auto-generate a password or username"
    puts "5. Delete a profile."
    puts "6. Exit out of this application"
    print "Input 1 through 5 to visit corresponding area."
    opt = gets.chomp
    return opt 
end 

# def edit_delete_product()
#     #show the list of products, just keys
#     puts hash.keys
#     #ask about the product we want to delete
#     print "What's the product you want to delete? "
#     name = gets.chomp.to_sym
#     #make sure it is in the Hash
#     if hash.has_key?(name)
#         print "Are you sure you want to delete it?(y/n) "
#         confirm = gets.chomp
#         if confirm == "y"
#             hash.delete(name)
#             puts "You have deleted this profile."
#         else
#             #condition ? true : false
#             puts mode == "delete"? "Deletion aborted..." : "Update aborted..."
#             #puts "Deletion aborted..."
#         end
#     else
#         puts "#{name} is not in the menu"
#     end

#     print_menu(hash)
# end
    

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
    while option != "6"
        system "clear"
        option = print_options
    
        case option
            when "1"
                print_profiles(profile_hasharray)
            when "2"
                input_user_up(profile_hasharray)
            when "3"
                #print_menu(hash_products)
            when "4"
                
            when "5"
                #edit_delete_product(hash_products, "delete")
            when "6"
                next
            else
                puts "invalid option"
        end
        puts "press Enter to continue..."
        gets
        system "clear"
    end
    puts "Goodbye!"


