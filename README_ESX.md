# Meteo Image Studio — ESX-Legacy edition

## Dependencies
- ESX-Legacy (`es_extended`)
- `ox_lib`
- FiveM server artifact with JavaScript runtime support (the resource uses `server/sv_files.js`)
- Optional: `meteo-furnishing` for the furnishing catalog

## Installation
1. Place the folder `meteo-imagestudio` in your resources directory. Keep this exact folder name because the original UI/events and rename convention use the `meteo-` prefix.
2. Ensure dependencies start first, then add `ensure meteo-imagestudio` to `server.cfg`.
3. Configure allowed ESX groups in `shared/config.lua` under `Config.permissions.groups`. Defaults are `admin` and `superadmin`.
4. Edit `Config.vehicles.list` in `shared/config.lua`. Each entry needs a valid spawn model, e.g. `{ model = 'adder', label = 'Adder', brand = 'Truffade', group = 'super' }`. Add your custom vehicle spawn names there. The catalog is not read from SQL or Qbox.
5. Use `/imagestudio` or `/imagestudio <model>`.

## Permissions
The server checks the player's current ESX group for every list, save and empty-state request. Optionally set `Config.permissions.ace = true` and grant `add_ace group.admin imagestudio.use allow` (adapt the ACE principal to your server).

## Safe mode
Set `setr meteo:safemode true` to allow browsing while disabling image writes. Set it to `false` for normal capture/save behavior.

## Output
Images are written to `images/<kind>/<model>.webp` and status metadata to `data/status.json`. The export remains:
`exports['meteo-imagestudio']:GetImageBase('vehicles')`

## Notes
- Vehicles and clothing work without Meteo Manage, Qbox or a database catalog.
- Furnishing remains optional and requires the compatible `meteo-furnishing` resource.
- The compiled NUI build is preserved; no UI source/build pipeline was included in the supplied archive.
- Newly written images are added to the resource's `files` manifest at runtime only after restart; if your server does not expose newly-created files through `cfx-nui` immediately, restart the resource before consuming those URLs.
