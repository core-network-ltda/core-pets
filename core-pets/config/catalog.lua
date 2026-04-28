-----------------------------------------------------------------------------------------------------------------------------------------
-- CATÁLOGO
-- Cada entrada precisa de:
--   type     : sempre "collection"
--   name     : nome exibido no painel
--   category : categoria (agrupador no painel)
--   rarity   : "commom" | "uncommom" | "rare" | "epic" | "legendary"
--   icon     : URL HTTPS da imagem
--   prop     : descrição do prop em-jogo (single-position OU multi via .positions[])
-----------------------------------------------------------------------------------------------------------------------------------------
CollectionsCatalog = {
    -- ════════════════════════════════════════════════════════════════════════
    -- BANGUELA — LEGENDARY
    -- ════════════════════════════════════════════════════════════════════════
    ["toothless"] = {
        type = "collection", name = "Toothless", category = "Banguela", rarity = "legendary",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/COMO%20TREINAR%20SEU%20DRAG%C3%83O/BANGUELA.png",
        prop = { model = "jpx_toothless_head", loop = true, moving = true, positions = {
            { id = "na_mao",    label = "Na Mão",     bone = 12844, pos = { x =  0.29, y =  0.08, z =  0.0  }, rot = { x =   0.0, y = -270.0, z =  180.0 }, model = "jpx_toothless_head"     },
            { id = "no_ombro",  label = "No Ombro",   bone = 10706, pos = { x =  0.11, y =  0.01, z =  0.21 }, rot = { x =   0.0, y =   15.0, z =  170.0 }, model = "jpx_toothless_shoulder" },
            { id = "segurando", label = "Segurando",  bone = 40269, pos = { x =  0.4,  y =  0.06, z =  0.1  }, rot = { x =   0.0, y =  -70.0, z =  200.0 }, model = "jpx_toothless_hold"     },
            { id = "no_chao",   label = "No Chão",    bone = 20190, pos = { x =  0.45, y = -0.2,  z = -1.0  }, rot = { x =   0.0, y =    0.0, z =  180.0 }, model = "jpx_toothless_ground"   },
            { id = "flutuando", label = "Flutuando",  bone = 20190, pos = { x =  0.5,  y =  0.0,  z =  0.8  }, rot = { x =   0.0, y =    0.0, z =  180.0 }, model = "jpx_toothless_float"    },
        }},
    },
    ["light"] = {
        type = "collection", name = "Light", category = "Banguela", rarity = "legendary",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/COMO%20TREINAR%20SEU%20DRAG%C3%83O/FURIA%20DA%20LUZ.png",
        prop = { model = "jpx_light_fury_mount", loop = true, moving = true, positions = {
            { id = "na_mao",    label = "Na Mão",     bone = 12844, pos = { x = -0.03, y =  0.15, z =  0.03  }, rot = { x =   0.0,  y =   90.0, z =  180.0 }, model = "jpx_light_fury_mount"    },
            { id = "no_ombro",  label = "No Ombro",   bone = 64729, pos = { x =  0.18, y = -0.02, z = -0.13  }, rot = { x = -10.0,  y =  180.0, z = -190.0 }, model = "jpx_light_fury_shoulder" },
            { id = "segurando", label = "Segurando",  bone = 45509, pos = { x =  0.55, y =  0.07, z = -0.07  }, rot = { x =   0.0,  y =  240.0, z =  180.0 }, model = "jpx_light_fury_hold"     },
            { id = "no_chao",   label = "No Chão",    bone = 20190, pos = { x =  0.85, y =  0.0,  z = -0.82  }, rot = { x =   0.0,  y =    0.0, z =  210.0 }, model = "jpx_light_fury_ground"   },
            { id = "flutuando", label = "Flutuando",  bone = 20190, pos = { x = -0.5,  y =  0.0,  z =  0.8   }, rot = { x =   0.0,  y =    0.0, z =  180.0 }, model = "jpx_light_fury_float"    },
        }},
    },

    -- ════════════════════════════════════════════════════════════════════════
    -- PODEROSAS — EPIC
    -- ════════════════════════════════════════════════════════════════════════
    ["docinho"] = {
        type = "collection", name = "Docinho", category = "Poderosas", rarity = "epic",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/MENINAS%20SUPER%20PODEROSAS/DOCINHO.png",
        prop = { model = "jpx_molly_powerpuff_buttercup", loop = true, moving = true,
            bone = 24818, pos = { x = 0.30, y = 0.04, z = -0.30 }, rot = { x = -90.0, y = -90.0, z = 0.0 } },
    },
    ["florzinha"] = {
        type = "collection", name = "Florzinha", category = "Poderosas", rarity = "epic",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/MENINAS%20SUPER%20PODEROSAS/FLORZINHA.png",
        prop = { model = "jpx_molly_powerpuff_blossom", loop = true, moving = true,
            bone = 64729, pos = { x = 0.20, y = 0.10, z = -0.08 }, rot = { x = 90.0, y = 195.0, z = 170.0 } },
    },
    ["lindinha"] = {
        type = "collection", name = "Lindinha", category = "Poderosas", rarity = "epic",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/MENINAS%20SUPER%20PODEROSAS/LINDINHA.png",
        prop = { model = "jpx_molly_powerpuff_bubbles", loop = true, moving = true,
            bone = 12844, pos = { x = 0.15, y = 0.04, z = 0.00 }, rot = { x = -90.0, y = -90.0, z = 0.0 } },
    },

    -- ════════════════════════════════════════════════════════════════════════
    -- DRAGÕES — RARE / EPIC
    -- ════════════════════════════════════════════════════════════════════════
    ["dragon_preto"] = {
        type = "collection", name = "Baby Dragon Preto", category = "Dragões", rarity = "epic",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/BABY%20DRAGON/BABY%20DRAGON%20BLACK.png",
        prop = { model = "babydragon6_by_joao", loop = true, moving = true, positions = {
            { id = "ombro_esq", label = "Ombro Esquerdo", bone = 10706, pos = { x = 0.10, y = 0.0,  z =  0.06 }, rot = { x =   0.0, y = -14.0, z = 195.0 } },
            { id = "ombro_dir", label = "Ombro Direito",  bone = 64729, pos = { x = 0.10, y = 0.0,  z = -0.06 }, rot = { x =-180.0, y =  14.0, z =  20.0 } },
            { id = "cabeca",    label = "Na Cabeça",      bone = 31086, pos = { x = 0.18, y = 0.03, z =  0.0  }, rot = { x =   0.0, y =  90.0, z = 180.0 } },
        }},
    },
    ["dragon_roxo"] = {
        type = "collection", name = "Baby Dragon Roxo", category = "Dragões", rarity = "rare",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/BABY%20DRAGON/BABY%20DRAGON%20ROXO.png",
        prop = { model = "babydragon_by_joao", loop = true, moving = true, positions = {
            { id = "ombro_esq", label = "Ombro Esquerdo", bone = 10706, pos = { x = 0.10, y = 0.0,  z =  0.06 }, rot = { x =   0.0, y = -14.0, z = 195.0 } },
            { id = "ombro_dir", label = "Ombro Direito",  bone = 64729, pos = { x = 0.10, y = 0.0,  z = -0.06 }, rot = { x =-180.0, y =  14.0, z =  20.0 } },
            { id = "cabeca",    label = "Na Cabeça",      bone = 31086, pos = { x = 0.18, y = 0.03, z =  0.0  }, rot = { x =   0.0, y =  90.0, z = 180.0 } },
        }},
    },
    ["dragon_azul"] = {
        type = "collection", name = "Baby Dragon Azul", category = "Dragões", rarity = "rare",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/BABY%20DRAGON/BABY%20DRAGON%20AZUL.png",
        prop = { model = "babydragon2_by_joao", loop = true, moving = true, positions = {
            { id = "ombro_esq", label = "Ombro Esquerdo", bone = 10706, pos = { x = 0.10, y = 0.0,  z =  0.06 }, rot = { x =   0.0, y = -14.0, z = 195.0 } },
            { id = "ombro_dir", label = "Ombro Direito",  bone = 64729, pos = { x = 0.10, y = 0.0,  z = -0.06 }, rot = { x =-180.0, y =  14.0, z =  20.0 } },
            { id = "cabeca",    label = "Na Cabeça",      bone = 31086, pos = { x = 0.18, y = 0.03, z =  0.0  }, rot = { x =   0.0, y =  90.0, z = 180.0 } },
        }},
    },
    ["dragon_rosa"] = {
        type = "collection", name = "Baby Dragon Rosa", category = "Dragões", rarity = "rare",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/BABY%20DRAGON/BABY%20DRAGON%20ROSA.png",
        prop = { model = "babydragon3_by_joao", loop = true, moving = true, positions = {
            { id = "ombro_esq", label = "Ombro Esquerdo", bone = 10706, pos = { x = 0.10, y = 0.0,  z =  0.06 }, rot = { x =   0.0, y = -14.0, z = 195.0 } },
            { id = "ombro_dir", label = "Ombro Direito",  bone = 64729, pos = { x = 0.10, y = 0.0,  z = -0.06 }, rot = { x =-180.0, y =  14.0, z =  20.0 } },
            { id = "cabeca",    label = "Na Cabeça",      bone = 31086, pos = { x = 0.18, y = 0.03, z =  0.0  }, rot = { x =   0.0, y =  90.0, z = 180.0 } },
        }},
    },
    ["dragon_verde"] = {
        type = "collection", name = "Baby Dragon Verde", category = "Dragões", rarity = "rare",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/BABY%20DRAGON/BABY%20DRAGON%20VERDE.png",
        prop = { model = "babydragon4_by_joao", loop = true, moving = true, positions = {
            { id = "ombro_esq", label = "Ombro Esquerdo", bone = 10706, pos = { x = 0.10, y = 0.0,  z =  0.06 }, rot = { x =   0.0, y = -14.0, z = 195.0 } },
            { id = "ombro_dir", label = "Ombro Direito",  bone = 64729, pos = { x = 0.10, y = 0.0,  z = -0.06 }, rot = { x =-180.0, y =  14.0, z =  20.0 } },
            { id = "cabeca",    label = "Na Cabeça",      bone = 31086, pos = { x = 0.18, y = 0.03, z =  0.0  }, rot = { x =   0.0, y =  90.0, z = 180.0 } },
        }},
    },
    ["dragon_laranja"] = {
        type = "collection", name = "Baby Dragon Laranja", category = "Dragões", rarity = "rare",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/BABY%20DRAGON/BABY%20DRAGON%20LARANJA.png",
        prop = { model = "babydragon5_by_joao", loop = true, moving = true, positions = {
            { id = "ombro_esq", label = "Ombro Esquerdo", bone = 10706, pos = { x = 0.10, y = 0.0,  z =  0.06 }, rot = { x =   0.0, y = -14.0, z = 195.0 } },
            { id = "ombro_dir", label = "Ombro Direito",  bone = 64729, pos = { x = 0.10, y = 0.0,  z = -0.06 }, rot = { x =-180.0, y =  14.0, z =  20.0 } },
            { id = "cabeca",    label = "Na Cabeça",      bone = 31086, pos = { x = 0.18, y = 0.03, z =  0.0  }, rot = { x =   0.0, y =  90.0, z = 180.0 } },
        }},
    },

    -- ════════════════════════════════════════════════════════════════════════
    -- POKEMON — RARE / UNCOMMOM / COMMOM
    -- ════════════════════════════════════════════════════════════════════════
    ["pikachu"] = {
        type = "collection", name = "Pikachu", category = "Pokemon", rarity = "rare",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/POKEMONS/PIKACHU.png",
        prop = { model = "jpx_pikachu", loop = true, moving = true,
            bone = 12844, pos = { x = 0.16, y = -0.06, z = 0.0 }, rot = { x = 0.0, y = 90.0, z = 195.0 } },
    },
    ["charmander"] = {
        type = "collection", name = "Charmander", category = "Pokemon", rarity = "rare",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/POKEMONS/CHARMANDER.png",
        prop = { model = "jpx_charmander", loop = true, moving = true,
            bone = 45509, pos = { x = 0.01, y = -0.04, z = -0.1 }, rot = { x = 0.0, y = 220.0, z = 180.0 } },
    },
    ["squirtle"] = {
        type = "collection", name = "Squirtle", category = "Pokemon", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/POKEMONS/SQUIRTLE.png",
        prop = { model = "jpx_squirtle", loop = true, moving = true,
            bone = 40269, pos = { x = 0.3, y = 0.05, z = 0.12 }, rot = { x = 0.0, y = 0.0, z = 180.0 } },
    },
    ["bulbasaur"] = {
        type = "collection", name = "Bulbasaur", category = "Pokemon", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/POKEMONS/BULBASAUR.png",
        prop = { model = "jpx_bulbasaur", loop = true, moving = true,
            bone = 20190, pos = { x = -0.2, y = 0.0, z = -1.0 }, rot = { x = 0.0, y = 0.0, z = 180.0 } },
    },
    ["jigglypuff"] = {
        type = "collection", name = "Jigglypuff", category = "Pokemon", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/POKEMONS/JIGGLYPUFF.png",
        prop = { model = "jpx_jigglypuff", loop = true, moving = true,
            bone = 10706, pos = { x = 0.15, y = 0.0, z = 0.15 }, rot = { x = 0.0, y = 10.0, z = 200.0 } },
    },
    ["pidgey"] = {
        type = "collection", name = "Pidgey", category = "Pokemon", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/POKEMONS/PIDGEY.png",
        prop = { model = "jpx_pidgey", loop = true, moving = true,
            bone = 24818, pos = { x = 0.5, y = 0.0, z = 0.5 }, rot = { x = 0.0, y = 90.0, z = 180.0 } },
    },
    ["butterfree"] = {
        type = "collection", name = "Butterfree", category = "Pokemon", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/POKEMONS/BUTTERFREE.png",
        prop = { model = "jpx_butterfree", loop = true, moving = true,
            bone = 24818, pos = { x = 0.45, y = 0.0, z = 0.05 }, rot = { x = 0.0, y = 90.0, z = 180.0 } },
    },
    ["poliwhirl"] = {
        type = "collection", name = "Poliwhirl", category = "Pokemon", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/POKEMONS/POLIWHIRL.png",
        prop = { model = "jpx_poliwhirl", loop = true, moving = true,
            bone = 20190, pos = { x = 0.5, y = 0.0, z = -0.82 }, rot = { x = 0.0, y = 0.0, z = 180.0 } },
    },
    ["magikarp"] = {
        type = "collection", name = "Magikarp", category = "Pokemon", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/POKEMONS/MAGIKARP.png",
        prop = { model = "jpx_magikarp", loop = true, moving = true,
            bone = 20190, pos = { x = 0.0, y = 0.0, z = -0.45 }, rot = { x = 0.0, y = 0.0, z = 0.0 } },
    },
    ["meowth"] = {
        type = "collection", name = "Meowth", category = "Pokemon", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/POKEMONS/MEOWTH.png",
        prop = { model = "jpx_meowth", loop = true, moving = true,
            bone = 46078, pos = { x = -0.03, y = 0.07, z = -0.17 }, rot = { x = 30.0, y = 200.0, z = 190.0 } },
    },
    ["psyduck"] = {
        type = "collection", name = "Psyduck", category = "Pokemon", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/POKEMONS/PSYDUCK.png",
        prop = { model = "jpx_psyduck", loop = true, moving = true,
            bone = 16335, pos = { x = 0.05, y = 0.0, z = 0.18 }, rot = { x = 0.0, y = 0.0, z = 180.0 } },
    },

    -- ════════════════════════════════════════════════════════════════════════
    -- FADAS — UNCOMMOM
    -- ════════════════════════════════════════════════════════════════════════
    ["pixie_rosa"] = {
        type = "collection", name = "Pixie Fairy Rosa", category = "Fadas", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/PIXIES%20FAIRYS/PIXIE%20ROSA.png",
        prop = { model = "pixiefairy_by_joao", loop = true, moving = true, positions = {
            { id = "ombro_dir", label = "Ombro Direito",  bone = 64729, pos = { x = 0.10, y = 0.0,  z = -0.15 }, rot = { x =-180.0, y =  14.0, z =  20.0 } },
            { id = "ombro_esq", label = "Ombro Esquerdo", bone = 10706, pos = { x = 0.10, y = 0.0,  z =  0.15 }, rot = { x =   0.0, y = -14.0, z = 195.0 } },
            { id = "cabeca",    label = "Na Cabeça",      bone = 31086, pos = { x = 0.25, y = 0.03, z =  0.0  }, rot = { x =   0.0, y =  90.0, z = 180.0 } },
        }},
    },
    ["pixie_roxo"] = {
        type = "collection", name = "Pixie Fairy Roxo", category = "Fadas", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/PIXIES%20FAIRYS/PIXIE%20ROXO.png",
        prop = { model = "pixiefairy2_by_joao", loop = true, moving = true, positions = {
            { id = "ombro_dir", label = "Ombro Direito",  bone = 64729, pos = { x = 0.10, y = 0.0,  z = -0.15 }, rot = { x =-180.0, y =  14.0, z =  20.0 } },
            { id = "ombro_esq", label = "Ombro Esquerdo", bone = 10706, pos = { x = 0.10, y = 0.0,  z =  0.15 }, rot = { x =   0.0, y = -14.0, z = 195.0 } },
            { id = "cabeca",    label = "Na Cabeça",      bone = 31086, pos = { x = 0.25, y = 0.03, z =  0.0  }, rot = { x =   0.0, y =  90.0, z = 180.0 } },
        }},
    },
    ["pixie_roxo_claro"] = {
        type = "collection", name = "Pixie Fairy Roxo Claro", category = "Fadas", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/PIXIES%20FAIRYS/PIXIE%20AZUL.png",
        prop = { model = "pixiefairy3_by_joao", loop = true, moving = true, positions = {
            { id = "ombro_dir", label = "Ombro Direito",  bone = 64729, pos = { x = 0.10, y = 0.0,  z = -0.15 }, rot = { x =-180.0, y =  14.0, z =  20.0 } },
            { id = "ombro_esq", label = "Ombro Esquerdo", bone = 10706, pos = { x = 0.10, y = 0.0,  z =  0.15 }, rot = { x =   0.0, y = -14.0, z = 195.0 } },
            { id = "cabeca",    label = "Na Cabeça",      bone = 31086, pos = { x = 0.25, y = 0.03, z =  0.0  }, rot = { x =   0.0, y =  90.0, z = 180.0 } },
        }},
    },
    ["pixie_laranja"] = {
        type = "collection", name = "Pixie Fairy Laranja", category = "Fadas", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/PIXIES%20FAIRYS/PIXIE%20LARANJA.png",
        prop = { model = "pixiefairy4_by_joao", loop = true, moving = true, positions = {
            { id = "ombro_dir", label = "Ombro Direito",  bone = 64729, pos = { x = 0.10, y = 0.0,  z = -0.15 }, rot = { x =-180.0, y =  14.0, z =  20.0 } },
            { id = "ombro_esq", label = "Ombro Esquerdo", bone = 10706, pos = { x = 0.10, y = 0.0,  z =  0.15 }, rot = { x =   0.0, y = -14.0, z = 195.0 } },
            { id = "cabeca",    label = "Na Cabeça",      bone = 31086, pos = { x = 0.25, y = 0.03, z =  0.0  }, rot = { x =   0.0, y =  90.0, z = 180.0 } },
        }},
    },
    ["pixie_verde"] = {
        type = "collection", name = "Pixie Fairy Verde", category = "Fadas", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/PIXIES%20FAIRYS/PIXIE%20VERDE.png",
        prop = { model = "pixiefairy5_by_joao", loop = true, moving = true, positions = {
            { id = "ombro_dir", label = "Ombro Direito",  bone = 64729, pos = { x = 0.10, y = 0.0,  z = -0.15 }, rot = { x =-180.0, y =  14.0, z =  20.0 } },
            { id = "ombro_esq", label = "Ombro Esquerdo", bone = 10706, pos = { x = 0.10, y = 0.0,  z =  0.15 }, rot = { x =   0.0, y = -14.0, z = 195.0 } },
            { id = "cabeca",    label = "Na Cabeça",      bone = 31086, pos = { x = 0.25, y = 0.03, z =  0.0  }, rot = { x =   0.0, y =  90.0, z = 180.0 } },
        }},
    },
    ["pixie_amarelo"] = {
        type = "collection", name = "Pixie Fairy Amarelo", category = "Fadas", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/PIXIES%20FAIRYS/PIXIE%20AMARELO.png",
        prop = { model = "pixiefairy6_by_joao", loop = true, moving = true, positions = {
            { id = "ombro_dir", label = "Ombro Direito",  bone = 64729, pos = { x = 0.10, y = 0.0,  z = -0.15 }, rot = { x =-180.0, y =  14.0, z =  20.0 } },
            { id = "ombro_esq", label = "Ombro Esquerdo", bone = 10706, pos = { x = 0.10, y = 0.0,  z =  0.15 }, rot = { x =   0.0, y = -14.0, z = 195.0 } },
            { id = "cabeca",    label = "Na Cabeça",      bone = 31086, pos = { x = 0.25, y = 0.03, z =  0.0  }, rot = { x =   0.0, y =  90.0, z = 180.0 } },
        }},
    },

    -- ════════════════════════════════════════════════════════════════════════
    -- CAQUINHOS (MACACOS) — UNCOMMOM / COMMOM
    -- ════════════════════════════════════════════════════════════════════════
    ["caquinha"] = {
        type = "collection", name = "Caquinha", category = "Caquinhos", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/CAQUINHOS/CAQUINHO%20FEM%C3%8AA.png",
        prop = { model = "caquinhasummer_by_joao", loop = true, moving = true, positions = {
            { id = "no_ombro",   label = "No Ombro",   bone = 24818, pos = { x = 0.280, y = -0.0948, z =  0.022 }, rot = { x =  -0.78, y =  90.0,  z = 180.0  }, anim = { dict = "caquinhossummer@joao", name = "noombro_clip",   flag = 49 } },
            { id = "segurando",  label = "Segurando",  bone = 18905, pos = { x = 0.702, y = -0.131,  z = -0.010 }, rot = { x = 180.0,  y =  67.81, z =   0.48 }, anim = { dict = "caquinhossummer@joao", name = "segurando2_clip", flag = 49 } },
            { id = "na_perna",   label = "Na Perna",   bone = 51826, pos = { x = 0.267, y =  0.0,    z =  0.138 }, rot = { x =   0.0,  y = -86.95, z = 167.49 }, anim = { dict = "caquinhossummer@joao", name = "naperna_clip",   flag = 49 } },
            { id = "no_colo",    label = "No Colo",    bone = 24818, pos = { x =-0.094, y =  0.164,  z =  0.0   }, rot = { x = 180.0,  y = -90.0,  z =   0.42 }, anim = { dict = "caquinhossummer@joao", name = "nocolo_clip",    flag = 49 } },
            { id = "nas_costas", label = "Nas Costas", bone = 24818, pos = { x = 0.2,   y = -0.12,   z = -0.1   }, rot = { x =   0.0,  y =  90.0,  z = 180.0  }, anim = { dict = "caquinhossummer@joao", name = "nascostas_clip", flag = 49 } },
        }},
    },
    ["caquinho"] = {
        type = "collection", name = "Caquinho", category = "Caquinhos", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/CAQUINHOS/CAQUINHO%20MACHO.png",
        prop = { model = "caquinhosummer2_by_joao", loop = true, moving = true, positions = {
            { id = "no_ombro",   label = "No Ombro",   bone = 24818, pos = { x = 0.280, y = -0.0948, z =  0.022 }, rot = { x =  -0.78, y =  90.0,  z = 180.0  }, anim = { dict = "caquinhossummer@joao", name = "noombro_clip",   flag = 49 } },
            { id = "segurando",  label = "Segurando",  bone = 18905, pos = { x = 0.702, y = -0.131,  z = -0.010 }, rot = { x = 180.0,  y =  67.81, z =   0.48 }, anim = { dict = "caquinhossummer@joao", name = "segurando2_clip", flag = 49 } },
            { id = "na_perna",   label = "Na Perna",   bone = 51826, pos = { x = 0.267, y =  0.0,    z =  0.138 }, rot = { x =   0.0,  y = -86.95, z = 167.49 }, anim = { dict = "caquinhossummer@joao", name = "naperna_clip",   flag = 49 } },
            { id = "no_colo",    label = "No Colo",    bone = 24818, pos = { x =-0.094, y =  0.164,  z =  0.0   }, rot = { x = 180.0,  y = -90.0,  z =   0.42 }, anim = { dict = "caquinhossummer@joao", name = "nocolo_clip",    flag = 49 } },
            { id = "nas_costas", label = "Nas Costas", bone = 24818, pos = { x = 0.2,   y = -0.12,   z = -0.1   }, rot = { x =   0.0,  y =  90.0,  z = 180.0  }, anim = { dict = "caquinhossummer@joao", name = "nascostas_clip", flag = 49 } },
        }},
    },

    -- ════════════════════════════════════════════════════════════════════════
    -- GATOS — UNCOMMOM / COMMOM
    -- ════════════════════════════════════════════════════════════════════════
    ["british_cat"] = {
        type = "collection", name = "British Cat", category = "Gatos", rarity = "uncommom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/GATOS/GATO%20BRITISH.png",
        prop = { model = "britishicat_by_joao", loop = true, moving = true,
            bone = 24818, pos = { x = -0.04, y = 0.163, z = 0.0176 }, rot = { x = 0.0, y = 90.0, z = -180.0 },
            anim = { dict = "petcarinhoanimation@joao", name = "carinho_clip", flag = 49 } },
    },
    ["munchkin_cat"] = {
        type = "collection", name = "Munchkin Cat", category = "Gatos", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/GATOS/GATO%20MUNCHKIN.png",
        prop = { model = "munchkincat_by_joao", loop = true, moving = true,
            bone = 24818, pos = { x = -0.02, y = 0.163, z = 0.0176 }, rot = { x = 0.0, y = 90.0, z = -180.0 },
            anim = { dict = "petcarinhoanimation@joao", name = "carinho_clip", flag = 49 } },
    },
    ["siames_cat"] = {
        type = "collection", name = "Siamês Cat", category = "Gatos", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/GATOS/GATO%20SIAM%C3%8AS.png",
        prop = { model = "siamescat_by_joao", loop = true, moving = true,
            bone = 24818, pos = { x = -0.04, y = 0.163, z = 0.0176 }, rot = { x = 0.0, y = 90.0, z = -180.0 },
            anim = { dict = "petcarinhoanimation@joao", name = "carinho_clip", flag = 49 } },
    },
    ["black_cat"] = {
        type = "collection", name = "Black Cat", category = "Gatos", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/GATOS/GATO%20BLACK.png",
        prop = { model = "blackcat_by_joao", loop = true, moving = true,
            bone = 24818, pos = { x = -0.04, y = 0.163, z = 0.0176 }, rot = { x = 0.0, y = 90.0, z = -180.0 },
            anim = { dict = "petcarinhoanimation@joao", name = "carinho_clip", flag = 49 } },
    },

    -- ════════════════════════════════════════════════════════════════════════
    -- CACHORROS — COMMOM
    -- ════════════════════════════════════════════════════════════════════════
    ["husky"] = {
        type = "collection", name = "Husky", category = "Pets", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/CACHORROS/HUSKY%20SIBERIANO.png",
        prop = { model = "husky_by_joao", loop = true, moving = true,
            bone = 18905, pos = { x = 0.057, y = 0.019, z = 0.099 }, rot = { x = 108.73, y = 14.53, z = -176.56 },
            anim = { dict = "segurandodoguinhoanim@joao", name = "doguinho_clip", flag = 49 } },
    },
    ["chowchow"] = {
        type = "collection", name = "Chowchow", category = "Pets", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/CACHORROS/CHOWCHOW.png",
        prop = { model = "chowchow_by_joao", loop = true, moving = true,
            bone = 18905, pos = { x = 0.06, y = 0.019, z = 0.12 }, rot = { x = 108.73, y = 14.53, z = -176.56 },
            anim = { dict = "segurandodoguinhoanim@joao", name = "doguinho_clip", flag = 49 } },
    },
    ["sharpei"] = {
        type = "collection", name = "Sharpei", category = "Pets", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/CACHORROS/SHAR%20PEI.png",
        prop = { model = "sharpei_by_joao", loop = true, moving = true,
            bone = 18905, pos = { x = 0.06, y = 0.019, z = 0.12 }, rot = { x = 108.73, y = 14.53, z = -176.56 },
            anim = { dict = "segurandodoguinhoanim@joao", name = "doguinho_clip", flag = 49 } },
    },
    ["pug"] = {
        type = "collection", name = "Pug", category = "Pets", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/CACHORROS/PUG.png",
        prop = { model = "pug_by_joao", loop = true, moving = true,
            bone = 18905, pos = { x = 0.06, y = 0.019, z = 0.12 }, rot = { x = 108.73, y = 14.53, z = -176.56 },
            anim = { dict = "segurandodoguinhoanim@joao", name = "doguinho_clip", flag = 49 } },
    },
    ["spitz"] = {
        type = "collection", name = "Spitz", category = "Pets", rarity = "commom",
        icon = "https://cdn.corenetwork.dev/PeluciasCore/CACHORROS/SPITZ%20ALEM%C3%83O.png",
        prop = { model = "luludapomerania_by_joao", loop = true, moving = true,
            bone = 18905, pos = { x = 0.06, y = 0.019, z = 0.12 }, rot = { x = 108.73, y = 14.53, z = -176.56 },
            anim = { dict = "segurandodoguinhoanim@joao", name = "doguinho_clip", flag = 49 } },
    },
}
