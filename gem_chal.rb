#find gem and install 'Gem Install Colorize', 'Gem list' to see the gem list, 'Gem uninstall' to uninstall
#need require to start
# require 'colorize'
# puts "this is red on blue".colorize(:red).on_blue

# STEP 1: Create a loop/method that will greet the user and ask if they want a fun fact
fun_fact_options = ["yes", "no"]
continue_loop = true
require 'faker'
require 'colorize'
require 'colorized_string'

puts "Hello there!"
sleep 2
while continue_loop		
   
    puts "Would you like to know random quotes from the TV Show, Friends? (options: #{fun_fact_options.join(", ")})".colorize(:black).on_white.underline
    action = gets.strip.downcase

    case action
    when "yes"
        puts Faker::TvShows::Friends.quote.colorize(:white).italic
    when "no"
        puts "That\'s a shame, we were just starting to have fun. Good bye!".colorize(:red)
        continue_loop = false
    else
        puts "Invalid selection!"
end
sleep 4
end



#STEP 2: Use faker (or the gem of your choice) to display the fact, then ask the user if they would like another fact
# require 'faker'
# fun_fact = Faker::TvShows::Friends.quote  NOTE TO SELF: Got stuck on this one because i didnt add .quote