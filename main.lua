print("Hello, My name is BloxChat. How can I help you today? (Type help for a list of commands)")

local external_api_error = [[
 ________________________________________________________
|                                                        |
| :(                                                     |
|                                                        |
|  BloxChat encountered a problem while connecting to an |
|  external API.                                         |
|  If this error continues to appear please consider     |
|   contacing the Bloxycraft support                     |
|                                                        |
|  Error code: EXT_API_ERR                               |
|                                                        |
|________________________________________________________|

]]

-- List of example greetings for Roblox cafe groups
local roblox_groups_greetings = {
  "Welcome to our virtual cafe! Grab a drink and relax.",
  "Greetings! This is a peaceful cafe for all Robloxians to enjoy.",
  "Greetings! Welcome to (Roblox airline name here). My name is (name here), here is some informations for this flight. Aircraft: Departure time: Boarding at:  . If you would like anything do not hesitate to ask me!",
  "Hi there! Welcome to this Roblox Hotel (Change it with the group name). My name is (name here), if you would like to be checked-in/out ask me!",
  "Good day! My name is (name here), our group offers a relaxing environment for you to have a great time. If you want anything do not hesitate to ask me.",
  "Hello there, welcome to (group name). My name is (name), how may I help you?"
}

-- List of fortune cookie fortunes
local fortunes = {
  "Good things come to those who believe. Better things come to those who are patient. And the best things come to those who don't give up.",
  "Opportunities are all around you. Keep your eyes and mind open.",
  "The early bird gets the worm, but the second mouse gets the cheese.",
  "A closed mouth catches no flies.",
  "A dream you dream alone is only a dream. A dream you dream together is reality.",
  "Good luck and great success will come to you in unexpected ways.",
  "The only way to do great work is to love what you do.",
  "Don't worry about the future. The future will worry about itself. Focus on the present.",
  "A rolling stone gathers no moss.",
  "A journey of a thousand miles begins with a single step."
}


-- List of popular airlines
local airlines = {
  "Delta",
  "American Airlines",
  "Southwest",
  "United",
  "Alaska",
  "Hawaiian",
  "Frontier",
  "Spirit ",
  "Ryanair",
  "JetBlue"
}


local planes = {
  "Boeing 747",
  "Airbus A380",
  "Boeing 787 Dreamliner",
  "Boeing 737",
  "Airbus A320",
  "Boeing 777",
  "Embraer E190",
  "Boeing 767",
  "McDonnell Douglas DC-10",
  "Boeing 757"
}


local youtubers = {
  "PewDiePie",
  "MrBeast",
  "Shane Dawson",
  "Markiplier",
  "James Charles",
  "Ninja",
  "Liza Koshy",
  "iJustine",
  "Zoella",
  "Binging with Babish"
}

local roblox_youtubers = {
 "GamingWithKev",
  "Denis",
  "Corl",
  "Flamingo",
  "Aphmau",
  "Roblox Horror",
  "LankyBox",
  "Diddleshot",
  "AlexLive",
  "Ssundee"
}

local robolox_games = {
  "Adopt Me!",
  "Royale High",
  "Welcome to Bloxburg",
  "Jailbreak",
  "Murder Mystery 2",
  "Phantom Forces",
  "Arsenal",
  "Super Hero Tycoon",
  "Superhero Simulator",
  "Assassin!",
}

local quotes = {
  "Be the change that you wish to see in the world. - Mahatma Gandhi",
  "The only way to do great work is to love what you do. - Steve Jobs",
  "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle. - Christian D. Larson",
  "Don't watch the clock; do what it does. Keep going. - Sam Levenson",
  "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill"
}

local jokes = {
  "Why don't scientists trust atoms? Because they make up everything.",
  "Why was the math book sad? Because it had too many problems.",
  "Why did the tomato turn red? Because it saw the salad dressing!",
  "Why did the scarecrow win an award? Because he was outstanding in his field."
}

local lyrics = [[
We're no strangers to love
You know the rules and so do I
A full commitment's what I'm thinking of
You wouldn't get this from any other guy

I just want to tell you how I'm feeling
Gotta make you understand

Never gonna give you up
Never gonna let you down
Never gonna run around and desert you
Never gonna make you cry
Never gonna say goodbye
Never gonna tell a lie and hurt you

GET RICKROLLED :D
]]


local bloxchat_ascii_art = [[
 ________  ________     
|\   __  \|\   ____\    
\ \  \|\ /\ \  \___|    
 \ \   __  \ \  \       
  \ \  \|\  \ \  \____  
   \ \_______\ \_______\
    \|_______|\|_______|
]]

local command_list = [[
Hi there! Thank you for using BloxChat, this chatbot is under development and owned by lollofanta13. Here is a list of commands for the chatbot:
hi -- geet a greeting from the chatbot
hello -- geet a greeting from the chatbot
time -- get the current time (may not be accurate)
date -- get the current daye
random -- get a random number from 1 to 100
credits -- get the credits for the chatbot (totally not self promotion :D)
bye -- say goodbye (never gonna say goodbye :D)
roblox vinns hotels greeting -- geet an example of a greeting that you can use in the Vinns Hotels and Resorts Roblox group
joke -- get a random joke (not funny jokes :( )
nothing -- you have to guess what does this command does :D
quote -- get a random motivational quote
random roblox game -- get a random Roblox game that you can play, if you want to suggest another Roblox game you can do it in our Discord server.
random Roblox yotuber -- get a random Roblox youtuber
random youtuber -- get a random youtuber
random plane -- get a random plane
random airline -- get a random airline (includes memes)
fortune -- you are lucky!
example greeting for Roblox groups -- get a random greeting for a Roblox group.
where is the ISS -- get the current location of the International Space Station (via other APIs)
]]

while true do
  local user_input = io.read()
 
  if user_input == "hi" or user_input == "hello" then
    print("Hello there! How can I assist you?")
    elseif user_input == "where is the ISS" then
    
   -- Where is the International Space Station right now?

local URL_ISS = "http://api.open-notify.org/iss-now.json"


local function printISS()

	local response

	local data

	-- Use pcall in case something goes wrong

	pcall(function()

		response= (URL_ISS)

		data = (response)

	end)

	-- Did our request fail or our JSON fail to parse?

	if not data then

		return false

	end


	-- Fully check our data for validity. This is dependent on what endpoint you're

	-- to which you're sending your requests. For this example, this endpoint is

	-- described here:  http://open-notify.org/Open-Notify-API/ISS-Location-Now/

	if data.message == "success" and data.iss_position then

		if data.iss_position.latitude and data.iss_position.longitude then

			print("The International Space Station is currently at:")

			print(data.iss_position.latitude .. ", " .. data.iss_position.longitude)

			return true

		end

	end

	return false

end


if printISS() then

	print("Success")

else

	print(external_api_error)
      break

end
    elseif user_input == "nothing" then
    print(lyrics)
  elseif user_input == "date" then
    print("Today's date is " .. os.date("%x"))
     elseif user_input == "random" then
    print("A random number between 1 and 100 is: " .. math.random(100))
    elseif user_input == "credits" then
    print("BloxChat was created by lollofanta13!")
    
  elseif user_input == "bye" then
    print("Goodbye! Have a great day.")
    break
  elseif user_input == "help" then
    print(bloxchat_ascii_art)
    print(command_list)
  elseif user_input == "time" then
    print("The current time is " .. os.date("%X"))
     elseif user_input == "joke" then
    local joke = jokes[math.random(#jokes)]
    print("Joke: " .. joke)

     elseif user_input == "random Roblox youtuber" then
    local random_youtuber = roblox_youtubers[math.random(#roblox_youtubers)]
    print("A random Roblox youtuber is: " .. random_youtuber)

    elseif user_input == "random youtuber" then
    local random_youtuber = youtubers[math.random(#youtubers)]
    print("A random YouTuber is: " .. random_youtuber)

      elseif user_input == "quote" then
    local quote = quotes[math.random(#quotes)]
    print("Quote: " .. quote)
    elseif user_input == "random roblox game" then
    local random_game = robolox_games[math.random(#robolox_games)]
    print("Here is a random popular Roblox game that you can play is: " .. random_game)

    elseif user_input == "random plane" then
    local random_plane = planes[math.random(#planes)]
    print("Sure! Here is a random plane: " .. random_plane)

    elseif user_input == "random airline" then
    local random_airline = airlines[math.random(#airlines)]
    print("A random airline is: " .. random_airline)

     elseif user_input == "fortune" then
    local random_fortune = fortunes[math.random(#fortunes)]
    print("Your fortune is: " .. random_fortune)

    -- Check if the user wants a greeting
    elseif user_input == "example greeting for Roblox groups" then
    local roblox_groups_greetings = roblox_groups_greetings[math.random(#roblox_groups_greetings)]
    print("Sure! Here are some greetings that you can use at a Roblox group: " .. roblox_groups_greetings)

    
  else
    print("Sorry, I don't understand. Could you please rephrase your request?")
  end
end
