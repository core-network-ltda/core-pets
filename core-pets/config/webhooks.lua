Webhooks = {}

local webhookURLs = {
    give     = "",
    remove   = "",
    trade    = "",
    featured = "",
    deposit  = "",
    withdraw = "",
    fusion   = "",
}

local function sendWebhook(url, embed)
    if not url or url == "" then return end
    PerformHttpRequest(url, function() end, "POST", json.encode({
        username = "Core Pets",
        embeds   = { embed },
    }), { ["Content-Type"] = "application/json" })
end

local function playerField(user_id)
    return "```ini\n[" .. tostring(user_id) .. "] " .. Functions.getUserName(user_id) .. "\n```"
end

function Webhooks.onGive(user_id, itemKey, qty)
    sendWebhook(webhookURLs.give, {
        author = { name = "Item adicionado à coleção" },
        fields = {
            { name = "Jogador", value = playerField(user_id), inline = true },
            { name = "Item",    value = "```" .. itemKey .. "```", inline = true },
            { name = "Qtd",     value = "```" .. tostring(qty) .. "```", inline = true },
        },
        color = 3066993,
    })
end

function Webhooks.onRemove(user_id, itemKey, qty)
    sendWebhook(webhookURLs.remove, {
        author = { name = "Item removido da coleção" },
        fields = {
            { name = "Jogador", value = playerField(user_id), inline = true },
            { name = "Item",    value = "```" .. itemKey .. "```", inline = true },
            { name = "Qtd",     value = "```" .. tostring(qty) .. "```", inline = true },
        },
        color = 15158332,
    })
end

local function itemKeyList(items)
    local out = {}
    for _, item in ipairs(items or {}) do
        out[#out + 1] = item.item_key
    end
    return #out > 0 and table.concat(out, "\n") or "—"
end

function Webhooks.onTradeProposal(fromUserId, toUserId, offer, request)
    sendWebhook(webhookURLs.trade, {
        author = { name = "Proposta de troca enviada" },
        fields = {
            { name = "De",         value = playerField(fromUserId), inline = true },
            { name = "Para",       value = playerField(toUserId),   inline = true },
            { name = "Oferecendo", value = "```" .. itemKeyList(offer)   .. "```", inline = false },
            { name = "Pedindo",    value = "```" .. itemKeyList(request) .. "```", inline = false },
        },
        color = 10181046,
    })
end

function Webhooks.onTradeAccepted(fromUserId, toUserId, offer, request)
    sendWebhook(webhookURLs.trade, {
        author = { name = "Troca aceita" },
        fields = {
            { name = "De",         value = playerField(fromUserId), inline = true },
            { name = "Para",       value = playerField(toUserId),   inline = true },
            { name = "Oferecido",  value = "```" .. itemKeyList(offer)   .. "```", inline = false },
            { name = "Recebido",   value = "```" .. itemKeyList(request) .. "```", inline = false },
        },
        color = 3066993,
    })
end

function Webhooks.onTradeDeclined(fromUserId, toUserId)
    sendWebhook(webhookURLs.trade, {
        author = { name = "Proposta de troca recusada" },
        fields = {
            { name = "De",   value = playerField(fromUserId), inline = true },
            { name = "Para", value = playerField(toUserId),   inline = true },
        },
        color = 15158332,
    })
end

function Webhooks.onFeatured(user_id, itemKey)
    sendWebhook(webhookURLs.featured, {
        author = { name = "Destaque alterado" },
        fields = {
            { name = "Jogador", value = playerField(user_id), inline = true },
            { name = "Item",    value = "```" .. tostring(itemKey or "nenhum") .. "```", inline = true },
        },
        color = 10181046,
    })
end

function Webhooks.onDeposit(user_id, itemKey, qty)
    sendWebhook(webhookURLs.deposit, {
        author = { name = "Depósito no painel" },
        fields = {
            { name = "Jogador", value = playerField(user_id), inline = true },
            { name = "Item",    value = "```" .. itemKey .. "```", inline = true },
            { name = "Qtd",     value = "```" .. tostring(qty) .. "```", inline = true },
        },
        color = 3066993,
    })
end

function Webhooks.onWithdraw(user_id, itemKey, qty)
    sendWebhook(webhookURLs.withdraw, {
        author = { name = "Saque do painel" },
        fields = {
            { name = "Jogador", value = playerField(user_id), inline = true },
            { name = "Item",    value = "```" .. itemKey .. "```", inline = true },
            { name = "Qtd",     value = "```" .. tostring(qty) .. "```", inline = true },
        },
        color = 15158332,
    })
end

function Webhooks.onFusion(user_id, itemKeyA, itemKeyB, target, success, resultKey)
    sendWebhook(webhookURLs.fusion, {
        author = { name = success and "Fusão bem-sucedida" or "Fusão falhou" },
        fields = {
            { name = "Jogador",   value = playerField(user_id), inline = true },
            { name = "Insumo A",  value = "```" .. itemKeyA .. "```", inline = true },
            { name = "Insumo B",  value = "```" .. itemKeyB .. "```", inline = true },
            { name = "Alvo",      value = "```" .. tostring(target) .. "```", inline = true },
            { name = "Resultado", value = "```" .. tostring(resultKey or "—") .. "```", inline = true },
        },
        color = success and 3066993 or 15158332,
    })
end
