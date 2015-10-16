require 'rubygems'
require 'colorize'

puts("You come upon an abandoned house with a dirty cracked door.")
puts("The neglected sun-burnt lawn has a crooked mailbox as its only feature.")

won_game = false
opened_mailbox = false
took_key = false
unlocked_door = false

until won_game
	input = gets().strip().downcase()
	if input == "open the door"
		if unlocked_door == true
			won_game = true
			puts("You win!".colorize(:yellow))
		else
			puts("It is locked.")
		end
 	elsif input == "open the mailbox"
 		opened_mailbox = true
		puts("Inside is a shining silver key.")
	elsif input == "get the key"
		if opened_mailbox == true
			took_key = true
			puts("Taken.")
		else
			puts("What key?")
		end
	elsif input == "unlock the door"
		if took_key == true
			unlocked_door = true
			puts "Click."
		else
			puts "With what?"
		end		
	else
		puts("Try again!")
	end
end