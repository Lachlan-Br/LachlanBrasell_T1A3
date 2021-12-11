


CHARS = ('0'..'9').to_a + ('A'..'Z').to_a + ('a'..'z').to_a + ('!'..'+').to_a
def user_pass_gen (length = gets.chomp.to_i)
CHARS.sort_by { rand }.join[0...length]
end

puts "This is your new password: " + user_pass_gen
