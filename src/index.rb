require 'colorize'
require 'ascii'
require 'bundler'
require 'passgen'


#put welcome page on here




#---------------



def print_options
    puts "1. View Profiles (passwords and usernames)."
    puts "2. Not Functional - Colorization"
    puts "3. Make new password or username."
    puts "4. Auto-generate a password or username"
    puts "5. Delete a profile."
    puts "6. Exit out of this application"
    puts "Input 1 through 6 to visit corresponding area."
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
    print "What profile name would you like to save this under? "
    prof = gets.chomp
    print "What would you like your username to be? "
        user_inp_usrname = gets.chomp
    print "Lastly what would you like your password to be? "
        user_inp_pass = gets.chomp
    profile = {name: prof, username: user_inp_usrname, password: user_inp_pass} 

    profile_hasharray.push(profile)
    print_profiles(profile_hasharray)
end

#This is option 4
def auto_user_up (profile_hasharray)
    keys_lns = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz?/\\ |}{[]!@# $%^&*()1234567890_-+=<>,.`~'':;".split(//)
    password = ""
    puts "Passwords and usernames are hard to remember. Pick a theme to help! What theme would you like?:"
    theme = gets.chomp
    puts "How long would you like your password or username to be?(Must be longer than the theme as that theme is part of the password/username!): "
    passwordlength = gets.chomp.to_i
        if passwordlength > theme.length
     passwordlength -= theme.length
     password += theme
         while passwordlength > 0
     password += keys_lns.sample
     passwordlength -= 1
    end
     puts "This is your new password or username: " + password
     puts "------------Please press enter once you have written down this password/username!------------"
     waiter = gets.chomp
    else
      puts "Can't use the theme since password length is shorter than the theme."
    end
end


#This is option 5
def delete_profile(profile_hasharray)
    puts profile_hasharray
    puts "What profile would you like to delete? (Note you cannot get this back.) "
    namedel = gets.chomp.to_sym
    print "Are you sure you want to delete it?(y/n) "
    confirm = gets.chomp
        if confirm == "y"
            profile_hasharray.delete(namedel)
            puts "You have deleted this profile."
        else
            puts "Aborted."
    end
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
                #colour choice?
            when "3"
                input_user_up(profile_hasharray)
            when "4"
                auto_user_up(profile_hasharray)
            when "5"
                delete_profile(profile_hasharray)
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


