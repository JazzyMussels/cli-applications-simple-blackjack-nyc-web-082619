require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
 cards = deal_card + deal_card 
  display_card_total(cards)
  cards 
end

def hit?(current_card_total)
  prompt_user
  case get_user_input 
  when "s"
    return current_card_total
  when "h" 
    card = deal_card 
    current_card_total += card 
  else 
    invalid_command 
    prompt_user 
    get_user_input
  end 
  current_card_total  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  cards = initial_round
    until cards > 21
    cards = hit?(cards)
    display_card_total(cards)
  end
  end_game(cards)
end
    
