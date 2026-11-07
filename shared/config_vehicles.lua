-- shared/config_vehicles.lua
-- Lista de veículos a capturar no estúdio.
-- Mesmo formato usado anteriormente em Config.vehicles.list.

Config = Config or {}
Config.vehicles = Config.vehicles or {}

-- `model` deve ser o nome de spawn (obrigatório).
-- `label`, `brand` e `group` são opcionais.
Config.vehicles.list = {
    { model = 'adder',     label = 'Adder',      brand = 'Truffade',   group = 'super' },
    { model = 'autarch',   label = 'Autarch',    brand = 'Overflod',   group = 'super' },
    { model = 'banshee',   label = 'Banshee',    brand = 'Bravado',    group = 'sports' },
    { model = 'buffalo',   label = 'Buffalo',    brand = 'Bravado',    group = 'sports' },
    { model = 'comet2',    label = 'Comet',      brand = 'Pfister',    group = 'sports' },
    { model = 'dominator', label = 'Dominator',  brand = 'Vapid',      group = 'muscle' },
    { model = 'elegy',     label = 'Elegy RH8',  brand = 'Annis',      group = 'sports' },
    { model = 'entityxf',  label = 'Entity XF',  brand = 'Overflod',   group = 'super' },
    { model = 'f620',      label = 'F620',       brand = 'Ocelot',     group = 'coupe' },
    { model = 'issi2',     label = 'Issi',       brand = 'Weeny',      group = 'compact' },
    { model = 'kuruma',    label = 'Kuruma',     brand = 'Karin',      group = 'sports' },
    { model = 'ninef',     label = '9F',         brand = 'Obey',       group = 'sports' },
    { model = 'oracle',    label = 'Oracle',     brand = 'Ubermacht',  group = 'sedan' },
    { model = 'sultan',    label = 'Sultan',     brand = 'Karin',      group = 'sports' },
    { model = 'zentorno',  label = 'Zentorno',   brand = 'Pegassi',    group = 'super' },
}