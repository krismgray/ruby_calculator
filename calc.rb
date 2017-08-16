require 'pry'
require 'colorize'

@array = ['+', '-', '*', '/']

def menu
  puts "Welcome to the Calculator. Start!".colorize(:green)
  start
end

def start
 begin
   input_one = gets.chomp
   input_one = Float(input_one)
 rescue
   puts "Invalid response, try again".colorize(:red)
    menu
  end
  operator(input_one)
end

def operator(first)
  puts "Choose one: +, -, /, * ".colorize(:purple)
  input = gets.chomp
  if @array.include?(input)
  else
    "Try again".colorize(:red)
    operator(first)
  end
  second(first, input)
end

def second(first, op)
  begin
  input_two = gets.chomp
  input_two = Float(input_two)
  rescue
    puts "Ehhh try again".colorize(:red)
    menu
  end
  answer(first, op, input_two)
end

def answer(first, op, second)
  case op
  when '-'
    answer = first - second
    puts "#{first} #{op} #{second} = #{answer}".colorize(:blue)
  when '+'
    answer = first + second
    puts "#{first} #{op} #{second} = #{answer}".colorize(:blue)
  when '*'
    answer = first * second
    puts "#{first} #{op} #{second} = #{answer}".colorize(:blue)
  when '/'
    answer = first / second
    puts "#{first} #{op} #{second} = #{answer}".colorize(:blue)
  end
  options(answer)
end

def options(answer)
  puts "Press 1 to continue"
  puts "Press 2 to clear"
  puts "Press 3 to quit"
  input = gets.chomp
  case input
    when '1'
      operator(answer)
    when '2'
      answer = ''
      menu
    when '3'
      puts "Bye Bye Now".colorize(:yellow)
    end
end

menu
