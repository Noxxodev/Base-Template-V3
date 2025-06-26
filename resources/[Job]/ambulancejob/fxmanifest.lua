--#--Fx Info--#--
fx_version 'cerulean'
use_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'

--#--Shared Scripts--#--
shared_script '@ox_lib/init.lua'

ox_libs {
	'locale',
}

--#--Cliend-Side Scripts--#--
client_scripts {
	"modules/utils/client/utils.lua",

	"client.lua",

	"modules/compatibility/frameworks/**/client.lua",
	"modules/compatibility/target/*.lua",

	"modules/injuries/client.lua",
	"modules/death/client.lua",
	"modules/stretcher/client.lua",
	"modules/paramedic/client.lua",

	"modules/job/client/main.lua",
	"modules/job/client/garage.lua",
	"modules/job/client/medical_bag.lua",
	"modules/job/client/stashes.lua",
	"modules/job/client/shops.lua",
	"modules/job/client/clothing.lua",
	"modules/job/client/bossmenu.lua",

	"modules/utils/client/coords_debug.lua",
}

--#--Server-Side Scripts--#--
server_scripts {
	"@oxmysql/lib/MySQL.lua",
	"modules/compatibility/frameworks/**/server.lua",
	"server.lua",
	"modules/commands/server.lua",
	"modules/compatibility/txadmin/server.lua",
}

--#--Additions Files--#--
files {
	'locales/fr.json',
	"data/*.lua",
	'config.lua',
}
