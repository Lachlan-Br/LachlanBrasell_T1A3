
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
