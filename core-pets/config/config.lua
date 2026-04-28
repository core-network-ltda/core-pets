Pets = {}

Config = Config or {}

Config.License = "" -- sua licensa aqui


-- Permissão necessária para acessar o painel admin (/petsadm)
Pets.AdminPermission = "Admin"

-- Comandos
Pets.Command = "pets"
Pets.AdminCommand = "petsadm"

-- Cor hexadecimal base utilizada na interface.
-- Theme.main em vrp/config/Global.lua tem prioridade quando definido.
Pets.ThemeColor = "#0143bb"

-----------------------------------------------------------------------------------------------------------------------------------------
-- OBJETOS 3D
-----------------------------------------------------------------------------------------------------------------------------------------
Pets.Objects = {
    DefaultBone = 28422,
    DefaultFlag = 49,
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- TROCA (TRADE)
-----------------------------------------------------------------------------------------------------------------------------------------
Pets.Trade = {
    RequireProximity   = true,
    MaxDistance        = 25.0,
    RequestTimeout     = 5000,
    AcceptKey          = "Y",
    DeclineKey         = "N",
    CleanupInterval    = 300000,
    MaxActiveTrades    = 100,
    MaxItemsPerTrade   = 50,
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- RARIDADE
-----------------------------------------------------------------------------------------------------------------------------------------
Pets.RarityOrder = { "commom", "uncommom", "rare", "epic", "legendary" }

Pets.RarityDisplay = {
    commom    = "Comum",
    uncommom  = "Incomum",
    rare      = "Raro",
    epic      = "Épico",
    legendary = "Lendário",
}

-- Valor numérico para cálculos genéricos
Pets.RarityValue = {
    commom    = 100,
    uncommom  = 250,
    rare      = 500,
    epic      = 750,
    legendary = 1000,
}

-- Multiplicador aplicado ao valor base do benefício (BenefitLevels).
Pets.RarityMultiplier = {
    legendary = 1.5,
    epic      = 1.2,
    rare      = 1.0,
    uncommom  = 0.8,
    commom    = 0.6,
}

-- Peso de drop ao sortear pelúcia aleatória (loot box).
-- Quanto maior, mais comum cair.
Pets.RarityDropWeight = {
    commom    = 50,
    uncommom  = 30,
    rare      = 13,
    epic      = 5,
    legendary = 2,
}

-- Nível máximo por raridade
Pets.MaxLevelPerRarity = {
    commom    = 5,
    uncommom  = 6,
    rare      = 8,
    epic      = 9,
    legendary = 10,
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- BENEFÍCIOS
-- Indice = nível (1..N). Algumas raridades não atingem todos os níveis.
-- O valor exibido = BenefitLevels[key][level] * RarityMultiplier[rarity].
-----------------------------------------------------------------------------------------------------------------------------------------
Pets.BenefitLevels = {
    Stamina          = { 2, 4, 6, 8, 10, 12, 14, 16, 18, 20 },
    CollectRoute     = { 3, 5, 7, 8, 9, 10, 11, 12, 15, 18 },
    DrugSell         = { 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5 },
    SuperDrugSell    = { 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5 },
    BackpackSlot     = { 1, 1, 1, 2, 2, 2, 3, 3, 3, 4 },
    InventoryWeight  = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 },
    UnderwaterBreath = { 3, 6, 9, 12, 15, 18, 21, 24, 27, 30 },
    LegalJob         = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 },
    Salary           = { 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5 },
    CraftTimeReduce  = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 },
    SkinLuck         = { 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5 },
    LaundryFeeReduce = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 },
    HungerReduce     = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 },
    ThirstReduce     = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 },
    C4TimeReduce     = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 },
    FuelReduce       = { 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5 },
}

Pets.BenefitLabels = {
    Stamina          = "Stamina +%d",
    CollectRoute     = "Coleta +%.1f%%",
    DrugSell         = "Venda Droga +%.1f%%",
    SuperDrugSell    = "Venda Super Droga +%.1f%%",
    BackpackSlot     = "Slot Mochila +%d",
    InventoryWeight  = "Peso Inventário +%d",
    UnderwaterBreath = "Fôlego +%d",
    LegalJob         = "Emprego Legal +%.1f%%",
    Salary           = "Salário +%.1f%%",
    CraftTimeReduce  = "Fabricação -%.1f%%",
    SkinLuck         = "Sorte Skin +%.1f%%",
    LaundryFeeReduce = "Lavagem -%.1f%%",
    HungerReduce     = "Fome -%.1f%%",
    ThirstReduce     = "Sede -%.1f%%",
    C4TimeReduce     = "C4 Caixinha -%.1f%%",
    FuelReduce       = "Gasolina -%.1f%%",
}

-- "flat" = soma direta com o valor base (Stamina, Slots, Peso, Fôlego)
-- "percent" = bônus percentual aplicado como multiplicador (1 + valor/100)
-- Para benefícios que REDUZEM (CraftTimeReduce, FuelReduce, etc.), o valor
-- continua positivo aqui; quem consome aplica como redução.
Pets.BenefitTypes = {
    Stamina          = "flat",
    CollectRoute     = "percent",
    DrugSell         = "percent",
    SuperDrugSell    = "percent",
    BackpackSlot     = "flat",
    InventoryWeight  = "flat",
    UnderwaterBreath = "flat",
    LegalJob         = "percent",
    Salary           = "percent",
    CraftTimeReduce  = "percent",
    SkinLuck         = "percent",
    LaundryFeeReduce = "percent",
    HungerReduce     = "percent",
    ThirstReduce     = "percent",
    C4TimeReduce     = "percent",
    FuelReduce       = "percent",
}

-- Pool de sorteio (chave + peso). Quanto maior o peso, mais provável.
Pets.BenefitPool = {
    { key = "Stamina",          weight = 10 },
    { key = "CollectRoute",     weight = 8  },
    { key = "DrugSell",         weight = 5  },
    { key = "SuperDrugSell",    weight = 3  },
    { key = "BackpackSlot",     weight = 5  },
    { key = "InventoryWeight",  weight = 8  },
    { key = "UnderwaterBreath", weight = 10 },
    { key = "LegalJob",         weight = 8  },
    { key = "Salary",           weight = 5  },
    { key = "CraftTimeReduce",  weight = 8  },
    { key = "SkinLuck",         weight = 5  },
    { key = "LaundryFeeReduce", weight = 8  },
    { key = "HungerReduce",     weight = 10 },
    { key = "ThirstReduce",     weight = 10 },
    { key = "C4TimeReduce",     weight = 5  },
    { key = "FuelReduce",       weight = 8  },
}

-- Quantos benefícios cada raridade carrega. Pesos = chance de cada quantidade.
Pets.BenefitCountPerRarity = {
    commom    = { { count = 1, weight = 100 } },
    uncommom  = { { count = 1, weight = 60 },  { count = 2, weight = 40 } },
    rare      = { { count = 2, weight = 100 } },
    epic      = { { count = 2, weight = 60 },  { count = 3, weight = 40 } },
    legendary = { { count = 3, weight = 99 },  { count = 4, weight = 1 } },
}

-----------------------------------------------------------------------------------------------------------------------------------------
-- XP
-----------------------------------------------------------------------------------------------------------------------------------------
-- XP concedido por chamada de GrantXP. Apenas pets equipados que carregam
-- o benefício associado àquela ação recebem o XP.
Pets.XpPerAction = {
    Stamina          = 10,
    CollectRoute     = 15,
    DrugSell         = 12,
    SuperDrugSell    = 12,
    BackpackSlot     = 8,
    InventoryWeight  = 8,
    UnderwaterBreath = 10,
    LegalJob         = 10,
    Salary           = 10,
    CraftTimeReduce  = 12,
    SkinLuck         = 15,
    LaundryFeeReduce = 10,
    HungerReduce     = 8,
    ThirstReduce     = 8,
    C4TimeReduce     = 15,
    FuelReduce       = 8,
}

-- XP necessário para chegar ao próximo nível (level → next).
-- Indice 1 = XP pra sair do nível 1 (chegar ao 2). Tem 9 entradas (level 10 = max).
Pets.XpPerLevel = { 100, 250, 500, 800, 1200, 1700, 2300, 3000, 3800, 5000 }

-----------------------------------------------------------------------------------------------------------------------------------------
-- APRIMORAMENTO (FUSÃO)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Mecânica:
--   1) Jogador deposita duas pelúcias e escolhe uma raridade alvo
--   2) Chance é calculada por:
--        tierDelta = max(0, idx(target) - idx(maior raridade entre A e B))
--        chance    = BaseChance - tierDelta * RarityJumpPenalty
--        se rarity(A) == rarity(B): chance += SameRarityBonus
--        chance    = clamp(chance, MinChance, MaxChance)
--   3) Em sucesso: cria 1 pelúcia aleatória da raridade alvo
--   4) Em falha:   cria 1 pelúcia aleatória da PIOR raridade entre A e B
--   Ambas as pelúcias depositadas são consumidas em qualquer caso.
Pets.Fusion = {
    BaseChance        = 60,   -- chance base quando target = maior raridade dos inputs
    RarityJumpPenalty = 25,   -- penalidade por tier acima do natural
    SameRarityBonus   = 10,   -- bônus quando ambos inputs têm a mesma raridade
    MaxChance         = 90,
    MinChance         = 1,
}
