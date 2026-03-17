# Questie-X-EbonholdDB

A [Questie-X](https://github.com/Xurkon/Questie-X) plugin that injects the **Ebonhold** server database � custom quests, NPCs, objects, items, and zone data � into Questie without modifying core files.

---

## Requirements

- [Questie-X](https://github.com/Xurkon/Questie-X) must be installed. This plugin will not load without it.
- WoW client: 3.3.5a (WotLK)
- Server: Ebonhold

---

## Installation

1. Download the latest release archive from the [Releases](https://github.com/Xurkon/Questie-X-EbonholdDB/releases) page.
2. Extract it into your `Interface/AddOns/` directory.
3. The extracted folder **must** be named `Questie-X-EbonholdDB`.
4. Ensure `Questie-X` is also present in `Interface/AddOns/`.
5. Reload your UI or restart the client.

Your addon list should look like:
```
Interface/AddOns/
  Questie-X/
  Questie-X-EbonholdDB/
```

---

## What is Included

| File | Contents |
|------|----------|
| `Ebonhold/EbonholdNpcDB.lua` | Custom NPC data including spawn coordinates |
| `Ebonhold/EbonholdObjectDB.lua` | Custom object data |
| `Ebonhold/EbonholdItemDB.lua` | Custom item data |
| `Ebonhold/EbonholdQuestDB.lua` | Custom quest definitions |
| `Zones/EbonholdUiMapData.lua` | UI map ID mappings for Ebonhold zones |
| `Zones/EbonholdZoneTables.lua` | Zone table overrides |
| `EbonholdLoader.lua` | Plugin entry point � registers data via QuestiePluginAPI |

---

## How It Works

`EbonholdLoader.lua` calls `QuestiePluginAPI:RegisterPlugin("Ebonhold")` on load and passes the database tables as overrides. Questie-X merges them into its runtime database, giving full quest tracking, map pins, and tooltip support for Ebonhold-specific content.

---

## Contributing

Submit quest data, NPC coordinates, or fixes via pull request. See the existing database files for the expected table format.

---

## License

MIT License
