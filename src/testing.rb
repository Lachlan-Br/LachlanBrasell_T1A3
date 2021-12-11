alpha, passwrd = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz?/\\ |}{[]!@# $%^&*()1234567890_-+=<>,.`~'':;".split(//), ""
puts "What word keyword/theme do you want the password to have?:"
theme = gets.chomp
puts "How long do you want the passwrd to be?(Must be longer than the theme.):"
passwrdlen = gets.chomp.to_i
passwrdlen > theme.length ? (passwrdlen -= theme.length; passwrd += theme; passwrdlen.times {passwrd += alpha.sample}; puts passwrd) : (puts "Can't use the theme since password length is shorter than the theme.")