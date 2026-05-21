game "rdr3"
fx_version "adamant"
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."
lua54 "yes"

author "Sarbatore"
description "gameEventTriggered event for RedM, allowing you to listen to native game events with their arguments like FiveM."
version "1.2.0"

client_scripts {
	"lib/dataview.lua",
	"config.lua",
	"client.lua"
}

escrow_ignore {
	"lib/dataview.lua",
	"config.lua",
	"client.lua"
}