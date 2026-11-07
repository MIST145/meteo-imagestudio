-- shared/config_furnishing.lua
-- Lista estática de props a capturar no estúdio.
-- Substitui a dependência do meteo-furnishing.

Config = Config or {}
Config.furnishing = Config.furnishing or {}

-- `model`        (obrigatório) nome do modelo do prop
-- `label`        (opcional)   nome visível
-- `categoryId`   (opcional)   id interno do grupo (agrupamento na UI)
-- `categoryLabel`(opcional)   nome visível do grupo
Config.furnishing.list = {
    -- ── Mobiliário: sofás ──────────────────────────────────────────────
    { model = 'prop_couch_01',         label = 'Sofá',              categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_couch_03',         label = 'Sofá (3)',          categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_couch_lg_02',      label = 'Sofá Grande',       categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_couch_lg_05',      label = 'Sofá Grande (5)',   categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_couch_lg_06',      label = 'Sofá Grande (6)',   categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_couch_lg_07',      label = 'Sofá Grande (7)',   categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_couch_lg_08',      label = 'Sofá Grande (8)',   categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_couch_sm_02',      label = 'Sofá Pequeno',      categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_couch_sm_05',      label = 'Sofá Pequeno (5)',  categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_couch_sm_06',      label = 'Sofá Pequeno (6)',  categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_couch_sm_07',      label = 'Sofá Pequeno (7)',  categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_couch_sm1_07',     label = 'Sofá Pequeno 1',    categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_couch_sm2_07',     label = 'Sofá Pequeno 2',    categoryId = 'furniture', categoryLabel = 'Mobiliário' },

    -- ── Mobiliário: cadeiras ───────────────────────────────────────────
    { model = 'prop_armchair_01',      label = 'Poltrona',          categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_chair_01a',        label = 'Cadeira 01a',       categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_chair_01b',        label = 'Cadeira 01b',       categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_chair_02',         label = 'Cadeira 02',        categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_chair_03',         label = 'Cadeira 03',        categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_chair_04a',        label = 'Cadeira 04a',       categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_chair_04b',        label = 'Cadeira 04b',       categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_chair_05',         label = 'Cadeira 05',        categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_chair_06',         label = 'Cadeira 06',        categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_chair_07',         label = 'Cadeira 07',        categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_chair_08',         label = 'Cadeira 08',        categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_chair_09',         label = 'Cadeira 09',        categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_chair_10',         label = 'Cadeira 10',        categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_stool_01',         label = 'Banco Alto',        categoryId = 'furniture', categoryLabel = 'Mobiliário' },

    -- ── Mobiliário: mesas ──────────────────────────────────────────────
    { model = 'prop_table_01',         label = 'Mesa 01',           categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_table_02',         label = 'Mesa 02',           categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_table_03',         label = 'Mesa 03',           categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_table_04',         label = 'Mesa 04',           categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_table_05',         label = 'Mesa 05',           categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_table_06',         label = 'Mesa 06',           categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_table_07',         label = 'Mesa 07',           categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_table_08',         label = 'Mesa 08',           categoryId = 'furniture', categoryLabel = 'Mobiliário' },

    -- ── Mobiliário: bancos ─────────────────────────────────────────────
    { model = 'prop_bench_01a',        label = 'Banco 01a',         categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_bench_01b',        label = 'Banco 01b',         categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_bench_01c',        label = 'Banco 01c',         categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_bench_02',         label = 'Banco 02',          categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_bench_03',         label = 'Banco 03',          categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_bench_04',         label = 'Banco 04',          categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_bench_06',         label = 'Banco 06',          categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_bench_07',         label = 'Banco 07',          categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_bench_08',         label = 'Banco 08',          categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_bench_10',         label = 'Banco 10',          categoryId = 'furniture', categoryLabel = 'Mobiliário' },
    { model = 'prop_bench_11',         label = 'Banco 11',          categoryId = 'furniture', categoryLabel = 'Mobiliário' },

    -- ── Eletrónica ─────────────────────────────────────────────────────
    { model = 'prop_tv_flat_01',       label = 'TV Plana',          categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_tv_flat_02',       label = 'TV Plana (2)',      categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_tv_flat_03',       label = 'TV Plana (3)',      categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_tv_01',            label = 'TV 01',             categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_tv_02',            label = 'TV 02',             categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_tv_03',            label = 'TV 03',             categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_tv_04',            label = 'TV 04',             categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_tv_05',            label = 'TV 05',             categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_tv_06',            label = 'TV 06',             categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_tv_07',            label = 'TV 07',             categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_phone_01',         label = 'Telemóvel',         categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_laptop_01a',       label = 'Portátil',          categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_monitor_01c',      label = 'Monitor 01c',       categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_monitor_01d',      label = 'Monitor 01d',       categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_monitor_w_large',  label = 'Monitor Grande',    categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_pc_02a',           label = 'PC Torre',          categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_keyboard_01a',     label = 'Teclado',           categoryId = 'electronics', categoryLabel = 'Eletrónica' },
    { model = 'prop_mouse_02',         label = 'Rato',              categoryId = 'electronics', categoryLabel = 'Eletrónica' },

    -- ── Decoração: plantas ────────────────────────────────────────────
    { model = 'prop_plant_int_01a',    label = 'Planta Interior 01a', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_01b',    label = 'Planta Interior 01b', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_02a',    label = 'Planta Interior 02a', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_02b',    label = 'Planta Interior 02b', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_03a',    label = 'Planta Interior 03a', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_03b',    label = 'Planta Interior 03b', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_03c',    label = 'Planta Interior 03c', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_04a',    label = 'Planta Interior 04a', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_04b',    label = 'Planta Interior 04b', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_04c',    label = 'Planta Interior 04c', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_05a',    label = 'Planta Interior 05a', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_05b',    label = 'Planta Interior 05b', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_06a',    label = 'Planta Interior 06a', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_06b',    label = 'Planta Interior 06b', categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_plant_int_06c',    label = 'Planta Interior 06c', categoryId = 'decor', categoryLabel = 'Decoração' },

    -- ── Decoração: vasos ──────────────────────────────────────────────
    { model = 'prop_pot_plant_01a',    label = 'Vaso 01a',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_01b',    label = 'Vaso 01b',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_01c',    label = 'Vaso 01c',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_01d',    label = 'Vaso 01d',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_01e',    label = 'Vaso 01e',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_02a',    label = 'Vaso 02a',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_02b',    label = 'Vaso 02b',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_02c',    label = 'Vaso 02c',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_02d',    label = 'Vaso 02d',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_03a',    label = 'Vaso 03a',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_03b',    label = 'Vaso 03b',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_03c',    label = 'Vaso 03c',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_04a',    label = 'Vaso 04a',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_04b',    label = 'Vaso 04b',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_04c',    label = 'Vaso 04c',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_05a',    label = 'Vaso 05a',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_05b',    label = 'Vaso 05b',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_05c',    label = 'Vaso 05c',          categoryId = 'decor', categoryLabel = 'Decoração' },
    { model = 'prop_pot_plant_05d',    label = 'Vaso 05d',          categoryId = 'decor', categoryLabel = 'Decoração' },
}