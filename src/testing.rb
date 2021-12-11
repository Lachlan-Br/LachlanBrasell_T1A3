
puts "would you like to make a password?"
answer = gets.chomp
if answer == "y"
        keys_lns = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz?/\\ |}{[]!@# $%^&*()1234567890_-+=<>,.`~'':;".split(//)
            password = ""
            puts "Passwords are hard to remember. Pick a theme to help! What theme would you like?:"
        theme = gets.chomp
        puts "How long would you like your password to be?(Must be longer than the theme as that theme is part of the password!):"
        passwordlength = gets.chomp.to_i
            if passwordlength > theme.length
         passwordlength -= theme.length
         password += theme
             while passwrdlength > 0
         password += keys_lns.sample
         passwordlength -= 1
         end
         puts "This is your new password: " + password
        else
          puts "Can't use the theme since password length is shorter than the theme."
        end
else
        puts "okay bye"
        
    end

