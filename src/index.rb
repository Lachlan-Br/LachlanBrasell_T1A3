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


    
#This is option 1
def print_profiles(profile_hasharray)
    puts "These are the current profiles: "
    profile_hasharray.each {|profile, username, password| puts "#{profile}: #{username} #{password}" }
end

#This is option 3
def input_user_up (profile_hasharray)
    print "What profile name would you like to save this under?"
    prof = gets.chomp
    print "What would you like your username to be?"
        user_inp_usrname = gets.chomp
    print "Lastly what would you like your password to be?"
        user_inp_pass = gets.chomp
    profile = {name: prof, username: user_inp_usrname, password: user_inp_pass} 

    profile_hasharray.push(profile)
    print_profiles(profile_hasharray)
end

#this is option 4
def auto_user_up (profile_hasharray)
    print "Please type out a profile name to save the password and/or username under: "
    prof=gets.chomp
    puts "Would you like to auto-generate a password? y/n"
    confirm_auto = gets.chomp   
        if confirm_auto == "y"
            passwordgen_LNSC
        else
            puts "Aborted."
        end
    puts "Would you also like to create a username? y/n"
    confirm_auto_u = gets.chomp   
        if confirm_auto_u == "y"
            usernamegen_LNSC
        else
            puts "Aborted."
        end
    profile_auto = {name:prof, username: user_username_gen, password: user_pass_gen}
    profile_hasharray.push(profile_auto)
    print_profiles(profile_hasharray)
    end
    


    


#This is option 5
def edit_delete_product(profile_hasharray, passwordgen_LNSC)
    #show the list of products, just keys
    puts profile_hasharray.keys
    #ask about the product we want to delete
    print "What profile would you like to delete? (Note you cannot get this back.)"
    name = gets.chomp.to_sym
    #make sure it is in the Hash
    if profile_hasharray.has_key?(name)
        print "Are you sure you want to delete it?(y/n) "
        confirm = gets.chomp
        if confirm == "y"
            profile_hasharray.delete(name)
            puts "You have deleted this profile."
        else
            puts "Deletion has been aborted, going back to menu."
        end
    else
        puts "#{name} is not in the menu"
    end
end

def usernamegen_LNSC
    def user_username_gen (length = gets.chomp.to_i)
    CHARS.sort_by { rand }.join[0...length]
    puts "This is your new username: " + user_username_gen
    end
end

def passwordgen_LNSC
    
    def user_pass_gen (length = gets.chomp.to_i)
    CHARS.sort_by { rand }.join[0...length]
    puts "This is your new password: " + user_pass_gen
    end
end

CHARS = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz?/\\ |}{[]!@# $%^&*()1234567890_-+=<>,.`~'':;".split(//)

profile_hasharray = [{name: "Yournamehere", username: "exampleuser", password: "examplepass"}, {name: "secondexample", username: "examptwo", password: "example"} ]

    option = ""
    while option != "6"
        system "clear"
        option = print_options
    
        case option
            when "1"
                print_profiles(profile_hasharray)
            when "2"
                #print_menu(hash_products)
            when "3"
                input_user_up(profile_hasharray)
            when "4"
                auto_user_up(profile_hasharray)
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


