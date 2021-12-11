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