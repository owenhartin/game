puts("You see a creepy old house with a dirty cracked door.")
input = gets().strip().downcase()

if input == "open door"
	puts("You win!")
else
	puts("Try again!")
end