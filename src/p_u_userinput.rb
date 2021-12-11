
    alpha, passwrd = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz?/\\ |}{[]!@# $%^&*()1234567890_-+=<>,.`~'':;".split(//), ""
    puts "What word keyword/theme do you want the password to have?:"
    theme = gets.chomp
    puts "How long do you want the passwrd to be?(Must be longer than the theme.):"
    passwrdlen = gets.chomp.to_i
    passwrdlen > theme.length ? (passwrdlen -= theme.length; passwrd += theme; passwrdlen.times {passwrd += alpha.sample}; puts passwrd) : (puts "You cannot use this theme since the passwrd length designated is shorter than said theme.")

    beta, usrname = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz?/\\ |}{[]!@# $%^&*()1234567890_-+=<>,.`~'':;".split(//), ""
    puts "Again, a keyword/theme for your username please.:"
    theme_u = gets.chomp
    puts "What length would you like your username to be?(Again, must be longer than your chosen theme.):"
    usrnamelen = gets.chomp.to_i
    usrnamelen > theme.length ? (usrnamelen -= theme.length; passwrd += theme; passwrdlen.times {usrname += beta.sample}; puts usrname) : (puts "You cannot use this theme since the usrname length designated is shorter than said theme.")


    puts "This is your username: " + usrname
    puts "This is your password: " + passwrd

    keys_lns = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz?/\\ |}{[]!@# $%^&*()1234567890_-+=<>,.`~'':;".split(//)
    password = ""
    puts "Passwords are hard to remember. Pick a theme to help! What theme would you like?:"
    theme = gets.chomp
    puts "How long would you like your password to be?(Must be longer than the theme as that theme is part of the password!):"
    passwrdlength = gets.chomp.to_i
        if passwordlength > theme.length
     passwordlength -= theme.length
     password += theme
         while passwrdlength > 0
     password += keys_lns.sample
     passwordlength -= 1
    end
     puts "This is your new password: " password
    else
      puts "Can't use the theme since password length is shorter than the theme."
    end