require 'colorize'
require 'ascii'
require 'bundler'
require 'passgen'




#put welcome page on here
puts "Firstly let's choose a colour!"
color = gets.chomp.to_sym

puts "░██╗░░░░░░░██╗███████╗██╗░░░░░░█████╗░░█████╗░███╗░░░███╗███████╗
░██║░░██╗░░██║██╔════╝██║░░░░░██╔══██╗██╔══██╗████╗░████║██╔════╝
░╚██╗████╗██╔╝█████╗░░██║░░░░░██║░░╚═╝██║░░██║██╔████╔██║█████╗░░
░░████╔═████║░██╔══╝░░██║░░░░░██║░░██╗██║░░██║██║╚██╔╝██║██╔══╝░░
░░╚██╔╝░╚██╔╝░███████╗███████╗╚█████╔╝╚█████╔╝██║░╚═╝░██║███████╗
░░░╚═╝░░░╚═╝░░╚══════╝╚══════╝░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚══════╝".colorize(color)
sleep 2

#---------------
def print_options(color)
    puts "
    ░██╗░░░░░░░██╗░█████╗░██████╗░██████╗░  ██████╗░░█████╗░███╗░░██╗██╗░░██╗
    ░██║░░██╗░░██║██╔══██╗██╔══██╗██╔══██╗  ██╔══██╗██╔══██╗████╗░██║██║░██╔╝
    ░╚██╗████╗██╔╝██║░░██║██████╔╝██║░░██║  ██████╦╝███████║██╔██╗██║█████═╝░
    ░░████╔═████║░██║░░██║██╔══██╗██║░░██║  ██╔══██╗██╔══██║██║╚████║██╔═██╗░
    ░░╚██╔╝░╚██╔╝░╚█████╔╝██║░░██║██████╔╝  ██████╦╝██║░░██║██║░╚███║██║░╚██╗
    ░░░╚═╝░░░╚═╝░░░╚════╝░╚═╝░░╚═╝╚═════╝░  ╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝".colorize(color)
    puts "1. View Profiles (passwords and usernames)."
    puts "2. Colorization - Not Functional"
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
    #pulls profiles from array and prints on terminal screen
    profile_hasharray.each {|profile, username, password| puts "#{profile}: #{username} #{password}" }
end
#this is option 2
def colorization 
    puts "What colour do you wish to change the terminal text to? (Red, Green, Blue, Yellow, Purple.) "
    #Gets user input to change colours.
    colour = gets.chomp.to_sym
end

#This is option 3
def input_user_up (profile_hasharray)
    print "What profile name would you like to save this under? "
    #gets profile name for user
    prof = gets.chomp
    print "What would you like your username to be? "
    #stores users username for profile array input
        user_inp_usrname = gets.chomp
    print "Lastly what would you like your password to be? "
    #stores users password for profile array input
        user_inp_pass = gets.chomp
    #places all previously stated username/name/password into a profile storage
    profile = {name: prof, username: user_inp_usrname, password: user_inp_pass} 
    #pushes profile (previous sotred data) to the hash array.
    profile_hasharray.push(profile)
    print_profiles(profile_hasharray)
end

#This is option 4
def auto_user_up (profile_hasharray)
    #defines what inputs are allowed in the password
    keys_lns = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz?/\\ |}{[]!@# $%^&*()1234567890_-+=<>,.`~'':;".split(//)
    #sets the password to nothing ready for input
    password = ""
    puts "Passwords and usernames are hard to remember. Pick a theme to help! What theme would you like?:"
    #gets the theme or start of password
    theme = gets.chomp
    puts "How long would you like your password or username to be?(Must be longer than the theme as that theme is part of the password/username!): "
    #password length to help randomly generate a password
    passwordlength = gets.chomp.to_i
    #error handling
        if passwordlength > theme.length
     passwordlength -= theme.length
     password += theme
         while passwordlength > 0
    #randomly samples keys to input a randomly generated password
     password += keys_lns.sample
     passwordlength -= 1
    end
     puts "This is your new password or username: " + password
     puts "------------Please press enter once you have written down this password/username!------------"
     #used for a double confirmation before continuing
     waiter = gets.chomp
    else
      puts "Can't use the theme since password length is shorter than the theme."
    end
end

#This is option 5
def delete_profile(profile_hasharray)
    #verification of which profile they wish to delete
    puts profile_hasharray
    puts "What profile would you like to delete? (Note you cannot get this back.) "
    #deletion command for profile verification
    namedel = gets.chomp.to_sym
    print "Are you sure you want to delete it?(y/n) "
    #confirmation of deletion
    confirm = gets.chomp
        if confirm == "y"
            #actual deletion of named piece from user in hasharray
            profile_hasharray.delete(namedel)
            puts "You have deleted this profile."
        else
            #error handling
            puts "Aborted."
    end
end
#current database for profiles (hasharray)
profile_hasharray = [{name: "Yournamehere", username: "exampleuser", password: "examplepass"}, {name: "secondexample", username: "examptwo", password: "example"} ]
color_array = [:Red, :Green, :Blue, :Yellow, :Orange, :Purple]

    option = ""
    while option != "6"
        system "clear"
        option = print_options(color)
    
        case option(color)
            when "1"
                print_profiles(profile_hasharray)
            when "2"
                colorization(color_array)
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


