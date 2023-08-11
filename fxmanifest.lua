fx_version 'adamant'
game 'gta5'
description 'BBV SKYDIVE'
version '1.0.0'


client_scripts {
	'config.lua',
	'client/main.lua',
	'wrapper/cl_wrapper.lua',
    'wrapper/cl_wp_callback.lua',
}

server_scripts {
	'wrapper/sv_wrapper.lua',
    'wrapper/sv_wp_callback.lua',
	'config.lua',
	'server/main.lua'
}


lua54 'yes'