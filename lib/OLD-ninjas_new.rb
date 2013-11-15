require_relative 'ninja_words'



class Ninjas
	def initialize(start)
		@start = start
	end

	puts @logo
	puts @intro
	puts " \n"


	def prompt()
		print ">"
	end



	def play()
    	next_room = @start

    	while true
      		puts "\n--------"
      		room = method(next_room)
      		next_room = room.call()
    	end
  	end




#5
	def fail_mission()

	# put failure here

	puts "#{failure}"
	puts "Would you like to play again? (y/n)"
	prompt()
	choice = gets.chomp
	
		if choice == "y"
			return :first
		else
			Process.exit(1)
		end
	end




#4
	def fork_choice()
		puts "What will you do?"
		prompt() 
		accept = gets.chomp	

	# put highway_continue
	# put mountain_pass

		if accept == "y"
			puts "#{highway_continue}"
		elsif accept == "n"
			puts "#{mountain_pass}"
			Process.exit(0)
		else
			puts "You did not pick (y)ES or (n)O. Try again!"
			return :city_choice
		end
	end




#3
	def city_choice()
	# put return_to_city
	# put forest_continue

		puts "What will you do?"
		prompt()
		accept = gets.chomp		
	
		if accept == "y"
			puts "#{return_to_city}"
			return :fail_mission
		elsif accept == "n"
			puts "#{forest_continue}"
			return :fork_choice
		else
			puts "You did not pick (y)ES or (n)O. Try again!"
			return :city_choice
		end
	end



#3
	def evade_scouts()	
		puts "What will you do?"
		prompt()
		accept = gets.chomp	
		
		# put highway_death
		# put scout_force

	
		if accept == "y"
			puts "#{scout_force}"
			return :fork_choice
		elsif accept == "n"
			puts "#{highway_death}"
			return :fail_mission
		else
			puts "You did not pick (y)ES or (n)O. Try again!"
			return :mission_select1
		end	
	end

	
	
#2
	def mission_select1()
		# put enter_princess
		# put enter_evade

		puts "What will you do?"
		prompt()
		accept = gets.chomp		
		
		if accept == "y"
			puts "#{enter_princess}"
			return :city_choice
		elsif accept == "n"
			puts "#{enter_evade}"
			return :evade_scouts
		else
			puts "You did not pick (y)ES or (n)O. Try again!"
			return :mission_select1
		end	
	end


#1
	def first()	
		prompt()
		
		puts "Enter your name?"
		name = gets.chomp.capitalize
		puts "\n"
	
		# put opening_words
	
		puts @opening_words
		return :mission_select1
	end
end


Ninjas.new(:first)





	