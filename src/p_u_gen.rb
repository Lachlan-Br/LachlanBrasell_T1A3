>> require 'rubygems'
>> require 'passgen'
>> Passgen::generate
=> "zLWCeS3xC9"



will do:
    - methods to do uppercase and lower
        -do only lower
        -numbers and  symbols
        
    - methods to do usernames similar to above but
        - only upper and lower case
        - no symbols
        - number and letters only.
        
    end



user_length = gets.chomp.to_i

Passgen::generate(:length => user_length)








if passgen does not work can use - This allows users to choose a length.

#This is for without symbols
    CHARS_LNC = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a
    def user_pass_gen (length = gets.chomp.to_i)
    CHARS_LN.sort_by { rand }.join[0...length]
    end
    
    puts "This is your new password: " + user_pass_gen

#this is for with symbols
    CHARS = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a + ('!'..'+').to_a
    def user_pass_gen (length = gets.chomp.to_i)
    CHARS.sort_by { rand }.join[0...length]
    end
    
    puts "This is your new password: " + user_pass_gen

#This is for with symbols but no caps
CHAR_LNS = ('0'..'9').to_a + ('a'..'z').to_a + ('!'..'+').to_a
    def user_pass_gen (length = gets.chomp.to_i)
    CHARS.sort_by { rand }.join[0...length]
    end
    
    puts "This is your new password: " + user_pass_gen

#This is for no numbers
CHARS_LSC = ('A'..'Z').to_a + ('a'..'z').to_a + ('!'..'+').to_a
    def user_pass_gen (length = gets.chomp.to_i)
    CHARS.sort_by { rand }.join[0...length]
    end
    
    puts "This is your new password: " + user_pass_gen