
def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  random = rand 1..11
  return random
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"

end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def invalid_command
  puts "Please enter a valid command"
end

def hit?(card_total)
  answer = get_user_input
  if answer == "h"
    card_total += deal_card
  elsif answer == "s"
    card_total
  else
    invalid_command
    prompt_user
    get_user_input
  end
end

def runner
  welcome
  total = initial_round
  until total > 21 do
    total = hit?(total)
    display_card_total(total)
  end
end

p runner
