Pets = {}

-----------------------------------------------------------------------------------------------------------------------------------------
-- GERAL
-----------------------------------------------------------------------------------------------------------------------------------------
-- ThemeColor é sobrescrito por Theme.main em vrp/config/Global.lua quando definido.
Pets.Command         = "pets"
Pets.AdminCommand    = "petsadm"
Pets.AdminPermission = "Admin"
Pets.ThemeColor      = "#0143bb"

-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCIONALIDADES
-----------------------------------------------------------------------------------------------------------------------------------------
-- Liga/desliga subsistemas. Desligar transforma o subsistema em no-op sem mexer
-- na coleção. Os pets continuam sendo equipados/posicionados; o que muda é:
--
--   Benefits = false  →  exports GetFlat/GetBonus/GetReduce/Apply devolvem
--                        neutro (0 / 1.0); GrantXP vira no-op; UI esconde
--                        benefícios e progressão de nível.
--
--   Fusion   = false  →  aba "Aprimoramento" some do front-end e os handlers
--                        previewFusion/postFusion rejeitam.
--
--   Trade    = false  →  aba "Trocas" some do front-end e os handlers de
--                        proposta/aceite/recusa rejeitam.
--
Pets.Features = {
    Benefits = true,
    Fusion   = true,
    Trade    = true,
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- OBJETOS 3D
-----------------------------------------------------------------------------------------------------------------------------------------
Pets.Objects = {
    DefaultBone = 28422,
    DefaultFlag = 49,
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- RARIDADES
-----------------------------------------------------------------------------------------------------------------------------------------
-- Ordem do menor para o maior tier — usada na fusão para calcular tierDelta
-- (idx(alvo) - idx(maior raridade dos inputs)).
Pets.RarityOrder = { "commom", "uncommom", "rare", "epic", "legendary" }

-- Tudo sobre cada raridade fica aqui. Uma fonte de verdade.
--   display      : nome exibido no UI.
--   multiplier   : aplicado ao Pets.Benefits[k].levels (valor final do benefit).
--   dropWeight   : peso no sorteio aleatório (loot box). Maior = mais comum.
--   maxLevel     : nível máximo de uma instância dessa raridade.
--   benefitCount : array { count, weight } sorteia quantos benefícios a
--                  instância carrega ao ser criada (pesos relativos).
Pets.Rarities = {
    commom    = { display = "Comum",    multiplier = 0.6, dropWeight = 50, maxLevel = 5,  benefitCount = { { count = 1, weight = 100 } } },
    uncommom  = { display = "Incomum",  multiplier = 0.8, dropWeight = 30, maxLevel = 6,  benefitCount = { { count = 1, weight = 60  }, { count = 2, weight = 40 } } },
    rare      = { display = "Raro",     multiplier = 1.0, dropWeight = 13, maxLevel = 8,  benefitCount = { { count = 2, weight = 100 } } },
    epic      = { display = "Épico",    multiplier = 1.2, dropWeight = 5,  maxLevel = 9,  benefitCount = { { count = 2, weight = 60  }, { count = 3, weight = 40 } } },
    legendary = { display = "Lendário", multiplier = 1.5, dropWeight = 2,  maxLevel = 10, benefitCount = { { count = 3, weight = 99  }, { count = 4, weight = 1  } } },
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- BENEFÍCIOS
-----------------------------------------------------------------------------------------------------------------------------------------
-- Catálogo de benefícios. A chave é o identificador usado em todos os exports
-- (GetFlat / GetBonus / GetReduce / Apply / GrantXP).
--   type        : "flat"    soma direta com o valor base.
--                 "percent" multiplicador (1 + valor/100). Quando o nome
--                           termina em "Reduce", o consumidor aplica como
--                           (1 - valor/100).
--   levels      : 10 valores (level 1..10). Final = levels[lv] * Rarities[r].multiplier.
--   label       : template no UI; suporta %d (flat) e %.1f%% (percent).
--   poolWeight  : peso ao sortear esse benefit ao criar uma instância.
--   xpPerAction : XP concedido por chamada exports("GrantXP", passport, key).
Pets.Benefits = {
    Stamina          = { type = "flat",    levels = {  2,  4,  6,  8,  10,  12,  14,  16,  18,  20 }, label = "Stamina +%d",               poolWeight = 10, xpPerAction = 10 },
    CollectRoute     = { type = "percent", levels = {  3,  5,  7,  8,   9,  10,  11,  12,  15,  18 }, label = "Coleta +%.1f%%",            poolWeight = 8,  xpPerAction = 15 },
    DrugSell         = { type = "percent", levels = { 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5 },       label = "Venda Droga +%.1f%%",       poolWeight = 5,  xpPerAction = 12 },
    SuperDrugSell    = { type = "percent", levels = { 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5 },       label = "Venda Super Droga +%.1f%%", poolWeight = 3,  xpPerAction = 12 },
    BackpackSlot     = { type = "flat",    levels = {  1,  1,  1,  2,   2,   2,   3,   3,   3,   4 }, label = "Slot Mochila +%d",          poolWeight = 5,  xpPerAction = 8  },
    InventoryWeight  = { type = "flat",    levels = {  1,  2,  3,  4,   5,   6,   7,   8,   9,  10 }, label = "Peso Inventário +%d",       poolWeight = 8,  xpPerAction = 8  },
    UnderwaterBreath = { type = "flat",    levels = {  3,  6,  9, 12,  15,  18,  21,  24,  27,  30 }, label = "Fôlego +%d",                poolWeight = 10, xpPerAction = 10 },
    LegalJob         = { type = "percent", levels = {  1,  2,  3,  4,   5,   6,   7,   8,   9,  10 }, label = "Emprego Legal +%.1f%%",     poolWeight = 8,  xpPerAction = 10 },
    Salary           = { type = "percent", levels = { 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5 },       label = "Salário +%.1f%%",           poolWeight = 5,  xpPerAction = 10 },
    CraftTimeReduce  = { type = "percent", levels = {  1,  2,  3,  4,   5,   6,   7,   8,   9,  10 }, label = "Fabricação -%.1f%%",        poolWeight = 8,  xpPerAction = 12 },
    SkinLuck         = { type = "percent", levels = { 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5 },       label = "Sorte Skin +%.1f%%",        poolWeight = 5,  xpPerAction = 15 },
    LaundryFeeReduce = { type = "percent", levels = {  1,  2,  3,  4,   5,   6,   7,   8,   9,  10 }, label = "Lavagem -%.1f%%",           poolWeight = 8,  xpPerAction = 10 },
    HungerReduce     = { type = "percent", levels = {  1,  2,  3,  4,   5,   6,   7,   8,   9,  10 }, label = "Fome -%.1f%%",              poolWeight = 10, xpPerAction = 8  },
    ThirstReduce     = { type = "percent", levels = {  1,  2,  3,  4,   5,   6,   7,   8,   9,  10 }, label = "Sede -%.1f%%",              poolWeight = 10, xpPerAction = 8  },
    C4TimeReduce     = { type = "percent", levels = {  1,  2,  3,  4,   5,   6,   7,   8,   9,  10 }, label = "C4 Caixinha -%.1f%%",       poolWeight = 5,  xpPerAction = 15 },
    FuelReduce       = { type = "percent", levels = { 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5 },       label = "Gasolina -%.1f%%",          poolWeight = 8,  xpPerAction = 8  },
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- PROGRESSÃO (XP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Indice = nível atual; valor = XP necessário pra subir pro próximo nível.
-- Indice 1 corresponde a sair do nível 1 → 2 (level 10 = max).
Pets.XpPerLevel = { 100, 250, 500, 800, 1200, 1700, 2300, 3000, 3800, 5000 }

-----------------------------------------------------------------------------------------------------------------------------------------
-- APRIMORAMENTO (FUSÃO)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Liga/desliga em Pets.Features.Fusion. Mecânica:
--   1) Jogador deposita duas pelúcias e escolhe uma raridade alvo.
--   2) Chance é calculada por:
--        tierDelta = max(0, idx(target) - idx(maior raridade entre A e B))
--        chance    = BaseChance - tierDelta * RarityJumpPenalty
--        se rarity(A) == rarity(B): chance += SameRarityBonus
--        chance    = clamp(chance, MinChance, MaxChance)
--   3) Em sucesso: cria 1 pelúcia aleatória da raridade alvo.
--   4) Em falha:   cria 1 pelúcia aleatória da PIOR raridade entre A e B.
--   Em qualquer caso, ambas as pelúcias depositadas são consumidas.
Pets.Fusion = {
    BaseChance        = 60, -- chance base quando target = maior raridade dos inputs
    RarityJumpPenalty = 25, -- penalidade por tier acima do natural
    SameRarityBonus   = 10, -- bônus quando ambos inputs têm a mesma raridade
    MaxChance         = 90,
    MinChance         = 1,
}
