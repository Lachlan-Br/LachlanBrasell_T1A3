# >> require 'rubygems'
# >> require 'passgen'
# >> Passgen::generate
# => "zLWCeS3xC9"



# #will do:
#     - methods to do uppercase and lower
#         -do only lower
#         -numbers and  symbols
        
#     - methods to do usernames similar to above but
#         - only upper and lower case
#         - no symbols
#         - number and letters only.
        
#     end



#user_length = gets.chomp.to_i

#Passgen::generate(:length => user_length)

passwordgen_LNSC


Note: Ask for a profile name, ask what type of password gen they would like, ask if want a username too (if no just put in "not set")



#if passgen does not work can use - This allows users to choose a length.

#this is for with symbols
#A: Basic Letters, Numbers, Symbols and Capitilisation 
def passwordgen_LNSC
    CHARS = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a + ('!'..'+').to_a
    def user_pass_gen (length = gets.chomp.to_i)
    CHARS.sort_by { rand }.join[0...length]
    puts "This is your new password: " + user_pass_gen
    end
end

#this is for with symbols
#A: Basic Letters, Numbers, Symbols and Capitilisation 
def usernamegen_LNSC
    CHARS = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a + ('!'..'+').to_a
    def user_username_gen (length = gets.chomp.to_i)
    CHARS.sort_by { rand }.join[0...length]
    puts "This is your new password: " + user_username_gen
    end
end

#This is for without symbols
#B: This generations a password with; Letters, Numbers and Capitilisation 
def passwordgen_LNC
    CHARS_LNC = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a
    def user_pass_gen (length = gets.chomp.to_i)
    CHARS_LN.sort_by { rand }.join[0...length]
    puts "This is your new password: " + user_pass_gen
    end
end

#This is for without symbols
#B: This generations a password with; Letters, Numbers and Capitilisation 
def usernamegen_LNC
    CHARS_LNC = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a
    def user_username_gen (length = gets.chomp.to_i)
    CHARS_LN.sort_by { rand }.join[0...length]
    puts "This is your new username: " + user_username_gen
    end
end
  

#This is for with symbols but no caps
#C: This generations a password with; Letters, Numbers and Symbols
def passwordgen_LNS
    CHAR_LNS = ('0'..'9').to_a + ('a'..'z').to_a + ('!'..'+').to_a
    def user_pass_gen (length = gets.chomp.to_i)
    CHARS_LNS.sort_by { rand }.join[0...length]
    puts "This is your new password: " + user_pass_gen
    end
end

#This is for with symbols but no caps
#C: This generations a password with; Letters, Numbers and Symbols
def usernamegen_LNS
    CHAR_LNS = ('0'..'9').to_a + ('a'..'z').to_a + ('!'..'+').to_a
    def user_username_gen (length = gets.chomp.to_i)
    CHARS_LNS.sort_by { rand }.join[0...length]
    puts "This is your new usetname: " + user_username_gen
    end
end
   

#This is for no numbers
#D: This generations a password with; Letters, Symbols and Capitilisation 
def passwordgen_LSC
    CHARS_LSC = ('A'..'Z').to_a + ('a'..'z').to_a + ('!'..'+').to_a
    def user_pass_gen (length = gets.chomp.to_i)
    CHARS_LSC.sort_by { rand }.join[1...length]
    puts "This is your new password: " + user_pass_gen
    end  
end

#This is for no numbers
#D: This generations a username with; Letters, Symbols and Capitilisation 
def usernamegen_LSC
    CHARS_LSC = ('A'..'Z').to_a + ('a'..'z').to_a + ('!'..'+').to_a
    def user_username_gen (length = gets.chomp.to_i)
    CHARS_LSC.sort_by { rand }.join[1...length]
    puts "This is your new username: " + user_username_gen
    end  
end
    




  