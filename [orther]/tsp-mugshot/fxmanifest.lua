fx_version 'cerulean'
game 'gta5'
lua54 'yes'
 
description 'A Mugshot Script For Police Job Made By Kael Team'
version '1.0.3'
author 'Kael-Scripts'



files {
	"html/js/*",
	"html/index.html",
}

ui_page 'html/index.html'

shared_script 'config.lua'

client_scripts {
	'client/**.lua'
}

server_scripts {
	'server/**.lua'
}