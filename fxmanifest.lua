fx_version 'cerulean'
game 'gta5'
lua54 'yes'
nui_callback_strict_mode 'true'

name 'meteo-imagestudio'
description 'ESX-Legacy image studio: transparent images of vehicles, clothing and props'
author 'Meteo Studios'
version '1.3.0-esx.1'

ox_lib 'locale'
dependency 'ox_lib'
dependency 'es_extended'

shared_scripts {
    '@ox_lib/init.lua',
    'shared/rename.lua',
    'shared/config.lua',
    'shared/config_vehicles.lua',     -- [NOVO] lista de veículos
    'shared/config_furnishing.lua',   -- [NOVO] lista de props (substitui meteo-furnishing)
    'shared/utils.lua',
    'shared/exports.lua',
}

client_scripts {
    'client/cl_studio.lua',
    'client/cl_camera.lua',
    'client/cl_capture.lua',
    'client/kinds/*.lua',
    'client/cl_main.lua',
}

server_scripts {
    'server/sv_main.lua',
    'server/sv_files.js',
}

ui_page 'web/build/index.html'

files {
    'locales/*.json',
    'web/build/index.html',
    'web/build/**/*',
    'images/**/*',
}