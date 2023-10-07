 --╔══════════════════════════════════════════════════╗--
---║                  ©catodev.info                   ║---
 --╚══════════════════════════════════════════════════╝--

fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

author 'catodev.info'
title 'no-npc'
description '0.00ms no-npc script'
version '1.0.0'

files {
	'src/popcycle.dat'
}
data_file 'POPSCHED_FILE' 'src/popcycle.dat'

client_script 'src/client.lua'
server_script 'src/server.lua'