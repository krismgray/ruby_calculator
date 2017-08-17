require 'pry'
require 'colorize'

@answers = [ 'No', 'Ask again', 'May the Force be with you',
'Yes', 'I dont feel like helping you right now',
'Why do you wish to know?', 'Back off Jack Weed!'
 ]

def menu
  puts "Welcome to the magic 8 ball!".colorize(:orange)
  puts ""
  puts "1: Ask a question, beware the results".colorize(:red)
  puts "2: Type QUIT to exit the magic"
  input = gets.chomp
  case input
    when '1'
      choice
    when 'QUIT'
      puts "Beware, for knowlege is power."colorize(:red)
    else
      puts "Invalid entry, try again"
      menu
  end
end

def choice
    puts "What would you desire to know?".colorize(:green)
    puts "Type help for suggestions".colorize(:green)
    puts "Type QUIT to leave at any time".colorize(:yellow)
    input = gets.chomp
    puts @answers.sample
    choice
      case input
        when "What should I ask my Iphone?"
          puts 'Ask siri "I see a little silhoutto of a man"'
          choice
        when "Who is my father?"
          puts 'Luke, I am your father'
          choice
        when "help"
        puts "Ask this: What should I ask my phone?"
        puts "Or try this: Who is my father?"
        choice
        when "QUIT"
      end
end
menu
