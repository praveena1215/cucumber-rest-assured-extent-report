@ResponseAttributes 
Feature: City Weather API response 
Scenario Outline: To ensure expected attributes and values are listed for the search city 
	Given a weather exists with a city of <cityname> 
	When a user retrieves the weather by city 
	Then the weather status code is 200 
	And the expected attributes are below 	    
		|location.region		| Tamil Nadu 	|
		|location.country		| India			|	
		|location.timezone_id	| Asia/Kolkata 	|
		|location.name 			| Chennai		|
		|current.temperature	| 30			|
		|current.weather_code	| 116 			|
		|request.type			| City			|
		|current.pressure		| 1008			|
	Examples: 
		|cityname |
		| Chennai |		