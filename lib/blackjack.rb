def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts  "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total =  deal_card + deal_card
  display_card_total(card_total)
  card_total
end

def current_card_total
  current_card_total = initial_round
  current_card_total += deal_card
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(card_total)
prompt_user
user_i = get_user_input
  if user_i == "s"
      #puts end_game(current_card_total)
    elsif user_i == "h"
      card_total += deal_card
      print card_total
      #prompt_user
    else
      invalid_command
      prompt_user
      get_user_input
  end
return card_total
end


#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  #prompt_user
  until card_total > 21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
  end_game(card_total)
end
