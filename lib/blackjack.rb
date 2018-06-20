def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  puts "running deal_card"
  card = 1 + rand(11)
  puts "card is #{card}"
  puts "Done running deal_card"
  return card
end

def display_card_total (card_total)
  puts "running display_card_total"
  puts "Your cards add up to #{card_total}"
  puts "done running display_card_total"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (last_card_total)
  puts "Sorry, you hit #{last_card_total}. Thanks for playing!"
end

def initial_round
  puts "running initial_round"
  initial_card_total = deal_card + deal_card
  display_card_total(initial_card_total)
  puts "done running initial_round"
  return initial_card_total
end

def hit? (current_card_total)
  puts "running hit?"
  puts "current_card_total is #{current_card_total}""
  prompt_user
  choice = get_user_input
  puts "Choice is #{choice}"
  if choice == "h"
    new_card_total = current_card_total + deal_card
    puts "new_card_total is #{new_card_total}"
  elsif choice != "s"
    invalid_command
    prompt_user
  else
  end
  puts "done running hit?"
  return new_card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total >= 21
    hit? (card_total)
    display_card_total (card_total)
  end
  end_game
end
    
