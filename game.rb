require 'rubygems'
require 'colorize'

@empty_heart_picture = "\u2661"
@full_heart_picture = "\u2665"

@hearts_remaining = 10
@won_game = false
@opened_mailbox = false
@took_key = false
@unlocked_door = false

def get_command_from_player1()
  gets().strip().downcase()
end

def show_hearts()
	puts(@full_heart_picture * @hearts_remaining)
end

def clear()
	system("clear")
end

def show_screen(message)
	clear()
	show_hearts()
	puts()
	puts(message)
	puts()
	print(">")
end

show_screen("You come upon an abandoned house with a dirty cracked door.\nThe neglected sun-burnt lawn has a crooked mailbox as its only feature.")

until @won_game
	command = get_command_from_player1()

	message = case command
	when "open the door"
		if @unlocked_door
            "Inside, you see a dusty living room.  With a penguin.  Pecking on the wall."
		else
			"It is locked."
		end
	when "open the mailbox"
		@opened_mailbox = true
		"Inside is a shining silver key."
	when "get the key"
		if @opened_mailbox
			@took_key = true
			"Taken."
		else
			"What key?"
		end
	when "unlock the door"
		if @took_key
			@unlocked_door = true
			"Click."
		else
			"With what?"
		end
	else
		"Try again!"
	end

	show_screen(message)
end
