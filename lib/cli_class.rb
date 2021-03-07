
require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'pry'


class Cli 

    attr_reader :symbol 

def greet_user
    puts "Enter symbol and check your stock!" 
end 

def get_user_input
    @symbol = gets.chomp 
end

def get_stock_quote(symbol)
   @info = Api.new.get_stock(symbol) 
   @info 
end 

def print_price
   puts @info 
end 

def print_menu
    puts "1. Enter new symbol"
    puts "2. Quit" 
end

def choose_action 
    print_menu
    # puts "1. Enter new symbol"
    # puts "2. Quit" 
    user_choice = gets.chomp 
    while user_choice == "1"
        greet_user
        get_user_input
        get_stock_quote(@symbol)
        print_price 
        print_menu
        user_choice = gets.chomp 
    end 
       puts "Happy investing!"   
end







end