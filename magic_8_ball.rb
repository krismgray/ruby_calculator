require 'pry'
require 'colorize'

@answers = [ 'No', 'Ask again', 'Yes',
'I dont feel like helping you right now',
'Why do you wish to know?', 'Back off Jack Weed!', 'Try Again'
 ]

 @answers_default = @answers.clone

def unique
  @answers << gets.strip
  @answers.length == @answers.uniq.length
end

def new_array
  if unique == true
    puts "Your answer has been added"
  elsif unique == false
    puts "That answer already exists"
  end
end


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
      puts "Beware, for knowlege is power.".colorize(:red)
    else
      puts "Invalid entry, try again"
      menu
  end
end

def choice
    puts "What would you desire to know?".colorize(:green)
    puts "Type help for suggestions".colorize(:green)
    puts "Press 3 to leave at any time".colorize(:yellow)
    input = gets.chomp
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
        when "add"
          new_array
          choice
        when "list"
           @answers.each_with_index do |response, index|
          puts "#{index + 1}. #{response}"
            end
          puts ""
          puts "If you want to add an answer the try typing add"
          puts "Try typing reset if you want the original answers"
          choice
        when "reset"
          puts "The original answers have returned"
          @answers = @answers_default
          choice
        when '3'
          puts "May the force be with you!".colorize(:blue)
        else
          puts @answers.sample
          choice
      end
end
menu
