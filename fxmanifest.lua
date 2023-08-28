fx_version 'adamant'

game 'gta5'

lua54 'yes'

author 'BabyDrill'

name 'wolf_jobs'

version '1.0'

description 'The best FREE Fivem Job Center https://discord.gg/yjPGt2YMcg'

ui_page 'html/wolf.html'

client_scripts {
    "config/client_config.lua",
    "client/*.lua"
} 

server_scripts {
    "config/*.lua",
    "server/*.lua"
}

files {
	'html/wolf.html',
    'html/wolf.js',
    'html/wolf.css'
}

data_file 'DLC_ITYP_REQUEST' 'stream/props/frutta-verdura/knjgh_fruits.ytyp'