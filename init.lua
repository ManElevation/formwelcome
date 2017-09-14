--By ManElevation

man = {}
-- SETTINGS 

man.welcome = "Welcome to ManElevation's server. Read Rules!... and have fun!";


man.players = {};
local worldpath = minetest.get_worldpath();


minetest.register_on_joinplayer(function(player) 
	local name = player:get_player_name(); if name == nil then return end 
	
	-- read player inventory data
	local form = "size [6,2] textarea[0,0;6.6,3.5;help;*** WELCOME ***;".. man.welcome.."]"
			minetest.show_formspec(name, "man:welcome", form)
	--		minetest.chat_send_player(name, man.welcome);
end)