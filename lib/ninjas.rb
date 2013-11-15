require_relative 'ninja_words'

	class BearBegin 
	
		def initialize(username)
			@user = username
		end
	
		def prompt()
			print "> "
		end
	
		def display_title()
			puts BearWords::LOGO
			puts BearWords::INTRO

			prompt()
			choice = gets.chomp
			
			if choice == "y"
				puts "Enter your name"
				prompt()
				name = gets.chomp.capitalize
					
					## IS THERE A BETTER WAY TO ASK FOR BIRTHDATE?
					puts "\nWhat year were you born?"
					prompt()
					ye = gets.chomp.to_i
	
					puts "\nWhat month were you born? (1-12)"
					prompt()
					mo = gets.chomp.to_i

					puts "\nWhat day were you born?"
					prompt()
					da = gets.chomp.to_i

					b = AgeVerify.new(name)
					b.age(ye,mo,da)
					#a = BearForest.new(name)
					#a.forest
			else
				puts "Game Over!"
				Process.exit(0)
			end
		end
	end
	
	
	
	class GameOver < BearBegin
		def ending
			puts "Game Over, #{@user}!"
			Process.exit(1)
		end
	end
	
	
	
	class FailMission < BearBegin
		def fail_mission()

			puts BearWords::FAILURE
			puts "#{@user} would you like to play again? (y/n)"
			prompt()
			choice = gets.chomp
	
			if choice == "y"
				a = StartSelect.new(@user)
				a.mission_select
			else
				b = GameOver.new
				b.ending
			end
		end
	end
	
	
	
	class AgeVerify < BearBegin
		
		def age(y,m,d)
			now = Time.now.utc.to_date
			#now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
			how_old = now.year - y - ((now.month - m || (now.month == m && now.day >= d)) ? 0 : 1) 
			#puts "#{how_old}"
	
			if how_old >= 18
				puts "\nCongrat's you're old enough to play this game! \n"
				a = StartSelect.new(@user)
				a.mission_select
			else
				puts "\nSorry kid, this is too intense for you."
				b = GameOver.new(@user)
				b.ending
			end
		end
	
	end
	
	
	
	
	
	class ForkChoice < BearBegin
		def fork_choice()
			prompt() 
			accept = gets.chomp	

			if accept == "y"
				puts BearWords::HIGHWAY_CONTINUE
				a = FailMission.new(@user)
				a.fail_mission
			elsif accept == "n"
				puts BearWords::MOUNTAIN_PASS
				b = GameOver.new(@user)
				b.ending
			else
				puts "#{@user}, you did not pick (y)ES or (n)O. Try again!"
				return :fork_choice
			end
		end
	end
	
	
	
	

	#class BearForest < BearBegin
	
	#	def forest()
	#		puts BearWords::FOREST_WORDS
	#		puts "#{@user} would you like to continue walking in the forest? (y/n)"
	#		prompt() 
	#		choice = gets.chomp
		
	#		if choice == "y"
	#			puts BearWords::OPENING_WORDS
	#			a = StartSelect.new(@user)
	#			a.mission_select1
	#		else
	#			puts "#{@user}, you wander around and die of starvation"
	#			b = GameOver.new(@user)
	#			b.ending
	#		end
	#	end
	#end	


	class CityChoice < BearBegin
		def city_choice()

			prompt()
			accept = gets.chomp		
	
			if accept == "y"
				puts BearWords::RETURN_TO_CITY
				a = FailMission.new(@user)
				a.fail_mission
			elsif accept == "n"
				puts BearWords::FOREST_CONTINUE
				b = ForkChoice.new(@user)
				b.fork_choice
			else
				puts "#{@user}, you did not pick (y)ES or (n)O. Try again!"
				return :city_choice
			end
		end
	end




	class ScoutFight < BearBegin
		def victory()
			sleep 2
			puts "\nYou have defeated your foe!\n"
			puts BearWords::FOREST_CONTINUE
			# return a class next_room which calls up next branch
			a = ForkChoice.new(@user)
			a.fork_choice
		end

		def fight_gen()
			#this could put a certain string depending on where fight_gen is called in program
			puts "The scout draws his laser sword \n"
			#this line could be constant attack methods, player can always n,d or f
			#the type of enemy could change the effectiveness of attack
			puts "Do you throw your (n)inja star, (d)efend against a sword attack or (f)lee? \n"
			prompt; choice = gets.chomp

			if choice == "n"
				while x = rand(0...5)	
					if x <= 3
						puts "You missed"
					else 
						puts "You hit a vital nerve and killed him"
						victory()
					end
					sleep 2
				end
	
			elsif choice == "d"
				while x = rand(0...5)		
					if x <= 2
						puts "He attacked, you blocked"
					elsif x >= 4
						puts "You parried, he blocked"
					else 
						puts "You broke his blade and killed him"
						victory()
					end
					sleep 2
				end

			else 
				puts "You have ran from your foe. You are a coward!"
				b = FailMission.new(@user)
				b.fail_mission
			end
		end
	end




	class EvadeScouts < BearBegin
	
		def evade_scouts()	
		
			prompt()
			accept = gets.chomp	

			if accept == "y"
			## here we'll redirect to fight test, which will then send to forkchoice
				a = ScoutFight.new(@user)
				a.fight_gen
				#puts BearWords::SCOUT_FORCE
				#a = ForkChoice.new(@user)
				#a.fork_choice
			elsif accept == "n"
				puts BearWords::HIGHWAY_DEATH
				b = FailMission.new(@user)
				b.fail_mission
			else
				puts "#{@user}, you did not pick (y)ES or (n)O. Try again!"
				return :evade_scouts
			end	
		end
	end


	class StartSelect < BearBegin
		def mission_select()
	
			puts BearWords::OPENING_WORDS

			prompt()
			accept = gets.chomp		
		
			if accept == "y"
				puts BearWords::ENTER_PRINCESS
				a = CityChoice.new(@user)
				a.city_choice
			elsif accept == "n"
				puts BearWords::ENTER_EVADE
				b = EvadeScouts.new(@user)
				b.evade_scouts
			else
				puts "#{@user}, you did not pick (y)ES or (n)O. Try again!"
				return :mission_select
			end	
		end
	end





	
	


cholo = BearBegin.new("NewUser")
cholo.display_title


#GAME IDEAS #GAME IDEAS #GAME IDEAS #GAME IDEAS #GAME IDEAS
#GAME IDEAS #GAME IDEAS #GAME IDEAS #GAME IDEAS #GAME IDEAS

	
	### Add this to game in addition to fight engine!!!! 
	### This will help you learn hashes & arrays plus...
	### Ruby date/time commands/func/etc...
	
	#Enter your age in order to play.
	#put how old are you. what is your birth month
	#what is your birth day
	#what is your birth year
	#then program checks combined data against limits
	#the limit resets real-time to what age a 18 year old person should be at that moment
	


