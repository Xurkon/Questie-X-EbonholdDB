# Changelog

## v1.0.0 — Initial Release

### Database

- **[Quests]** Initial Ebonhold custom quest database (`EbonholdQuestDB.lua`) including Trophy quests, Kill quests, and Zone Completion quests across Azeroth, Kalimdor, Outland, and Northrend.
- **[NPCs]** Initial Ebonhold NPC database with full spawn coordinates for rare NPCs and quest targets (`EbonholdNpcDB.lua`).
- **[Objects]** Initial Ebonhold object database (`EbonholdObjectDB.lua`).
- **[Items]** Initial Ebonhold item database (`EbonholdItemDB.lua`).
- **[Zones]** Added UI map ID mappings and zone table overrides for Ebonhold-specific zones.

### Plugin

- **[Loader]** `EbonholdLoader.lua` registers all database tables with Questie-X via `QuestiePluginAPI`.
- **[TOC]** `Questie-Ebonhold.toc` declares `Questie-X` as a hard dependency — plugin will not load without the core addon present.
