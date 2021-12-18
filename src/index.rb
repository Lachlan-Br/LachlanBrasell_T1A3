require 'colorize'
require 'ascii'
require 'passgen'
require 'tty-progressbar'
require 'rspec'
require 'artii'
require 'rubygems'




#put welcome page on here
#puts "Welcome " + echo from bash
#loop do
puts "Firstly let's choose a colour for the text! (red, green, blue, yellow, leave blank for white!)"
color = gets.chomp.to_sym
puts "secondly, What background colour would you like? (red, green, blue, yellow, leave blank for none!)"
color_b = gets.chomp.to_sym
    if color_b == color
        puts "Please use two different colours."
    end
puts "Setting up colours, please wait!"
bar = TTY::ProgressBar.new("downloading [:bar]", total: 15)
15.times do
    sleep(0.1)
    bar.advance  # by default increases by 1
  end
#artii "art"
#a = Artii::Base.new :font => 'slant'
#a.asciify('Art!')
#break
#end
puts "
░██╗░░░░░░░██╗███████╗██╗░░░░░░█████╗░░█████╗░███╗░░░███╗███████╗
░██║░░██╗░░██║██╔════╝██║░░░░░██╔══██╗██╔══██╗████╗░████║██╔════╝
░╚██╗████╗██╔╝█████╗░░██║░░░░░██║░░╚═╝██║░░██║██╔████╔██║█████╗░░
░░████╔═████║░██╔══╝░░██║░░░░░██║░░██╗██║░░██║██║╚██╔╝██║██╔══╝░░
░░╚██╔╝░╚██╔╝░███████╗███████╗╚█████╔╝╚█████╔╝██║░╚═╝░██║███████╗
░░░╚═╝░░░╚═╝░░╚══════╝╚══════╝░╚════╝░░╚════╝░╚═╝░░░░░╚═╝╚══════╝
".colorize(color).colorize(:background => color_b)
sleep 2

#---------------
def print_options(color, color_b)
    puts "
    ░██╗░░░░░░░██╗░█████╗░██████╗░██████╗░  ██████╗░░█████╗░███╗░░██╗██╗░░██╗
    ░██║░░██╗░░██║██╔══██╗██╔══██╗██╔══██╗  ██╔══██╗██╔══██╗████╗░██║██║░██╔╝
    ░╚██╗████╗██╔╝██║░░██║██████╔╝██║░░██║  ██████╦╝███████║██╔██╗██║█████═╝░
    ░░████╔═████║░██║░░██║██╔══██╗██║░░██║  ██╔══██╗██╔══██║██║╚████║██╔═██╗░
    ░░╚██╔╝░╚██╔╝░╚█████╔╝██║░░██║██████╔╝  ██████╦╝██║░░██║██║░╚███║██║░╚██╗
    ░░░╚═╝░░░╚═╝░░░╚════╝░╚═╝░░╚═╝╚═════╝░  ╚═════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═╝░░╚═╝
    ".colorize(color).colorize(:background => color_b)
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
    puts "Fetching your profiles...."
    bar = TTY::ProgressBar.new("downloading [:bar]", total: 15)
    15.times do
        sleep(0.1)
        bar.advance  # by default increases by 1
      end
    #artii 'profiles.'
    puts "These are the current profiles: "
    #pulls profiles from array and prints on terminal screen
    profile_hasharray.each {|profile, username, password| puts "#{profile}: #{username} #{password}" }
    puts "Here is a free random password! " + Passgen::generate
end
#this is option 2
def colorization (color, color_b)
    puts "What colour do you wish to change the terminal text to? (Red, Green, Blue, Yellow, Purple.) "
    #Gets user input to change colours.
    color = gets.chomp.to_sym
    puts "Would you like to change the background colour? y/n "
    conf_c = gets.chomp
     if conf_c == "y"
        puts "what colour would you like the background? "
        color_b = gets.chomp.to_sym 
        puts "Changing colours now! Two seconds please."
        sleep 2 
        #insert loading times / bars for interactivity 
    else
        puts "Alright, changing colours now...."
        sleep 1
        #insert loading times / bars for interactivity
    end

    
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
     puts "If you need a password or username aswell you can use this! " + Passgen::generate
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
    name = gets.chomp
    #confirmation of deletion
    if profile_hasharray.include?(name)
        print "Are you sure you want to delete it?(y/n) "
        confirm = gets.chomp
            if confirm == "y"
                #actual deletion of named piece from user in hasharray
                profile_hasharray.delete(name)
                puts "You have deleted the #{name} profile."
            else
                #error handling
                puts "Aborted."
            end
    else
        puts "This profile #{name} does not exist."
    end
end
#current database for profiles (hasharray)
profile_hasharray = [{name: "Yournamehere", username: "exampleuser", password: "examplepass"}, {name: "secondexample", username: "examptwo", password: "example"} ]
color_array = [:color, :color_b]

    option = ""
    while option != "6"
        system "clear"
        option = print_options(color, color_b)
    
        case option
            when "1"
                print_profiles(profile_hasharray)
            when "2"
                colorization(color, color_b)
            when "3"
                input_user_up(profile_hasharray)
            when "4"
                auto_user_up(profile_hasharray)
            when "5"
                delete_profile(profile_hasharray)
            when "6"
                next
            else
                puts "Please use numbers 1 through 6."
        end
        puts "press the ENTER key to continue."
        gets
        system "clear"
    end
    puts "Goodbye!"


