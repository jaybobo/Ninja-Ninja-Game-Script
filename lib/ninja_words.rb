#!/usr/bin/env ruby

module BearWords

	#these are accessible in this class only
	TITLE = "Welcome to the Bear Game"
	FOREST_WORDS = "You are on an empty road"
	
	#### NINJA, NINJA STARTS HERE ####
	
	LOGO = "
                                                                                                                                        
             NNN......N...NNNNNNN...NNN......N...NNNNNNNNN...NNNNNN   
             N..N.....N......N......N..N.....N.......N.......N....N
             N...N....N......N......N...N....N.......N.......N....N
             N....N...N......N......N....N...N...N...N.......NNNNNN
             N.....N..N......N......N.....N..N...N...N.......N....N
             N......NNN...NNNNNNN...N......NNN...NNNNN.......N....N
             
             ----------------------------+++++||||||||||||||||||||||
                                            
             NNN......N...NNNNNNN...NNN......N...NNNNNNNNN...NNNNNN   
             N..N.....N......N......N..N.....N.......N.......N....N
             N...N....N......N......N...N....N.......N.......N....N
             N....N...N......N......N....N...N...N...N.......NNNNNN
             N.....N..N......N......N.....N..N...N...N.......N....N
             N......NNN...NNNNNNN...N......NNN...NNNNN.......N....N"
	
	


	INTRO = 
	"\nIt is the year 2445, the world's governments have been overtaken by a singular
	oppressive entity known as \"The Force.\" You have been trained as a ninja spy with the 
	singular goal of aiding the rebel army to overthrow your dictators. Your mission if you 
	choose to accept it is to deliver a message to the rebel leaders about the creation of 
	a new weapon that will destroy your homeland. \nWill you accept this mission? (y = YES/n = NO)"



	FAILURE = 
	"\nYou have failed your people and your homeland. The Force attacked with their 
	new superweapon and destroyed everything that you hold dear. \n
	GAME OVER!\n"



	HIGHWAY_CONTINUE = 
	"\nYou chose the highway. Unfortunately, The Force has closed off the route due to your attack
	on the convoy carrying the princess. You are immediately spotted, surrounded and executed.

	You have FAILED.\n"
	
	
	MOUNTAIN_PASS = 
	"\nYou successfully traverse the mountain pass and enter your hidden homeland. You are a hero!
	With The Force's superweapon plans, the rebels are able to defeat them and find freedom and
	liberty! You have WON!\n"



	RETURN_TO_CITY = 
	"\nAs you and the princess enter the city, you are spotted by rebel spies. They follow you to
	the princesses quarters and kill you both. You have chose love of a woman you just met over
	the welfare of your people. You are pronounced a traitor in your homeland. Your name is a
	curse word. You have FAILED!\n"

	FOREST_CONTINUE = 
	"\nYou have made a wise decision and are successful in your choice. Though, you are delayed 
	significantly you continue on your way through the forest and approach a fork in the road.\n 
	Do you continue onto the highway (y) or take the treacherous mountain road (n)? \n"


	HIGHWAY_DEATH = 
	"\nYou attempted to flee from the scouting party but they called for more reinforcements.
	You are no match for your foes. You are tortured endlessly and forced to give up the location
	of the rebel headquarters.\n"

	SCOUT_FORCE = 
	"\nYou defeated the scout force soundly but suffered some injuries. Though, you are delayed 
	significantly you continue on your way through the forest and approach a fork in the road.\n 
	Do you continue onto the highway (y) or take the treacherous mountain road (n)? \n 
	FTT"


	ENTER_PRINCESS = 
	"\nYou have decided to attack the small enemy force. Your surprise attack 
	caught them flatfooted. Your ninja skills were no matched for your foes. 
	You are victorious. You approach the transport ship and open the door.\n
	...INSIDE is a beautiful maiden with long flowing hair. \n

	The maiden after becoming enraptured with your gentlemanly wiles is overcome 
	with emotion. She tells you that The Force detected your theft of their 
	evil plans. They are waiting for you to exit the forest! Will you exit towards 
	the city with the princess (y) or return to the forest as originally planned (n)?\n"

	ENTER_EVADE = 
	"\nYou attempted to evade the enemy force but have been spotted by a scouting party.
	You are outnumbered and do not have the advantage of surprise. Keep in mind you 
	are more skilled than your foes. Will you attack (y) or flee (n)? \n"


	OPENING_WORDS = 
	"\nYou enter the forest at one with nature. You have been trained to disguise
	yourself and easily move unnoticed through the underbrush. As you approach the
	midway point of your journey through the forest, you spot a small enemy force
	escorting a transport vehicle. Will you attack them (y) or evade (n)?\n"
	
	
end