# Started it but havent finished.
def menu
  puts "Manual Pages"
  puts "1: Command line"
  puts "2: Exit"
  input = gets.strip
  case input
  when '1'
    command
  when '2'
    puts "See You Later"
  end
end

def command
  puts "Which command would you like to choose?"
  puts ""
  puts "1: mkdir"
  puts "2: cp"
  puts "3: cd"
  puts "4: ls"
  puts "5: quit"
  input = gets.strip
  case input
  when '1' #Need to put definitions of what commands do
  when '2'
  when '3'
  when '4'
  when '5'
    puts "Bye!"
  else
    puts "Invalid entry."
    command
  end

end

menu
