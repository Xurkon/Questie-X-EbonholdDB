
local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function(self)
    self:UnregisterEvent("PLAYER_LOGIN")

    local realmName = GetRealmName() or ""
    if realmName ~= "Rogue-Lite (Live)" then return end

    if not QuestieLoader then
        return
    end

    ---@type QuestiePluginAPI
    local QuestiePluginAPI = QuestieLoader:ImportModule("QuestiePluginAPI")

    if not QuestiePluginAPI then
        Questie:Debug(Questie.DEBUG_CRITICAL, "[EbonholdLoader] QuestiePluginAPI module not found — Ebonhold data will not load.")
        return
    end

    ---@type table
    local EbonholdDB = _G.EbonholdDB or {}

    local plugin = QuestiePluginAPI:RegisterPlugin("Ebonhold")
    if not plugin then return end

    print("|cFF5EBAF3Questie|r|cFFDAFAFD-X|r [EbonholdLoader] Plugin registered, injecting data...")
    Questie:Debug(Questie.DEBUG_DEVELOP, "[EbonholdLoader] Registering Ebonhold plugin...")

    if EbonholdZoneTables then
        Questie:Debug(Questie.DEBUG_DEVELOP, "[EbonholdLoader] Injecting zone tables...")
        plugin:InjectZoneTables(EbonholdZoneTables)
    end

    if EbonholdUiMapData then
        Questie:Debug(Questie.DEBUG_DEVELOP, "[EbonholdLoader] Injecting UI map data...")
        plugin:InjectUiMapData(EbonholdUiMapData)
    end

    if EbonholdDB.npcData then
        Questie:Debug(Questie.DEBUG_DEVELOP, "[EbonholdLoader] Injecting NPC data...")
        plugin:InjectDatabase("NPC", EbonholdDB.npcData)
    end
    if EbonholdDB.objectData then
        Questie:Debug(Questie.DEBUG_DEVELOP, "[EbonholdLoader] Injecting Object data...")
        plugin:InjectDatabase("OBJECT", EbonholdDB.objectData)
    end
    if EbonholdDB.itemData then
        Questie:Debug(Questie.DEBUG_DEVELOP, "[EbonholdLoader] Injecting Item data...")
        plugin:InjectDatabase("ITEM", EbonholdDB.itemData)
    end
    if EbonholdDB.questData then
        Questie:Debug(Questie.DEBUG_DEVELOP, "[EbonholdLoader] Injecting Quest data...")
        plugin:InjectDatabase("QUEST", EbonholdDB.questData)
    end

    plugin:FinishLoading()
end)

