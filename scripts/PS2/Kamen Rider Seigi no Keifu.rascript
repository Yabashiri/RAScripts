// Kamen Rider: Seigi no Keifu
// #ID = 31667

CHAPTER_ONE = 1
CHAPTER_ONE_HINT_FILES_TOTAL = 50

// MEMORY: game state

ADDR_TITLE_SCREEN_TASK_HANDLE = 0x00400220
ADDR_CURRENT_LOCATION = 0x0041f08c
ADDR_CURRENT_CHAPTER = 0x0041f0a0
// Script flag bit 5: Rider Select active; bit 6: Clear-data flag.
ADDR_SCRIPT_FLAGS_10000_10007 = 0x0041f606
ADDR_SAVE_COUNTER = 0x00428234
ADDR_CURRENT_PLAYER_CHARACTER = 0x0044badc
ADDR_CURRENT_HEALTH = 0x0044bae4
ADDR_MAX_HEALTH = 0x0044bae8

titleScreenTaskHandle = word(ADDR_TITLE_SCREEN_TASK_HANDLE)
currentLocation = dword(ADDR_CURRENT_LOCATION)
currentChapter = dword(ADDR_CURRENT_CHAPTER)
saveCounter = dword(ADDR_SAVE_COUNTER)
currentPlayerCharacter = dword(ADDR_CURRENT_PLAYER_CHARACTER)
currentHealth = dword(ADDR_CURRENT_HEALTH)
maxHealth = dword(ADDR_MAX_HEALTH)

// MEMORY: files found

ADDR_FILES_FOUND_KEY_1 = 0x0041f25c
ADDR_FILES_FOUND_KEY_2 = 0x0041f25d
ADDR_FILES_FOUND_KEY_3 = 0x0041f25e
ADDR_FILES_FOUND_HINT_1 = 0x0041f3d3
ADDR_FILES_FOUND_HINT_2 = 0x0041f3d4
ADDR_FILES_FOUND_HINT_3 = 0x0041f3d5
ADDR_FILES_FOUND_HINT_4 = 0x0041f3d6
ADDR_FILES_FOUND_HINT_5 = 0x0041f3d7
ADDR_FILES_FOUND_HINT_6 = 0x0041f3d8
ADDR_FILES_FOUND_HINT_7 = 0x0041f3d9
ADDR_FILES_FOUND_HINT_8 = 0x0041f3da
ADDR_FILES_FOUND_HINT_9 = 0x0041f3db

// FUNCTIONS

function IsCurrentChapter(chapter) => currentChapter == chapter

function IsTitleScreenTaskRunning() => titleScreenTaskHandle != 0

function IsRiderSelectActive() => bit5(ADDR_SCRIPT_FLAGS_10000_10007) == 1

function IsClearDataFlagSet() => bit6(ADDR_SCRIPT_FLAGS_10000_10007) == 1

function RiderSelectFlagsChanged() =>
    prev(bit5(ADDR_SCRIPT_FLAGS_10000_10007)) != bit5(ADDR_SCRIPT_FLAGS_10000_10007) ||
    prev(bit6(ADDR_SCRIPT_FLAGS_10000_10007)) != bit6(ADDR_SCRIPT_FLAGS_10000_10007)

function VintageFashionTrigger() =>
    IsTitleScreenTaskRunning() &&
    IsRiderSelectActive() &&
    IsClearDataFlagSet() &&
    RiderSelectFlagsChanged()

function ChapterOneHintFilesFound()
{
    return
        bit4(ADDR_FILES_FOUND_KEY_1) +
        bit5(ADDR_FILES_FOUND_KEY_1) +
        bit6(ADDR_FILES_FOUND_KEY_1) +
        bit0(ADDR_FILES_FOUND_KEY_2) +
        bit1(ADDR_FILES_FOUND_KEY_2) +
        bit2(ADDR_FILES_FOUND_KEY_2) +
        bit3(ADDR_FILES_FOUND_KEY_2) +
        bit4(ADDR_FILES_FOUND_KEY_2) +
        bit5(ADDR_FILES_FOUND_KEY_2) +
        bit6(ADDR_FILES_FOUND_KEY_2) +
        bit7(ADDR_FILES_FOUND_KEY_2) +
        bit0(ADDR_FILES_FOUND_KEY_3) +
        bit1(ADDR_FILES_FOUND_KEY_3) +
        bit2(ADDR_FILES_FOUND_KEY_3) +
        bit3(ADDR_FILES_FOUND_KEY_3) +
        bit4(ADDR_FILES_FOUND_HINT_1) +
        bit5(ADDR_FILES_FOUND_HINT_1) +
        bit6(ADDR_FILES_FOUND_HINT_1) +
        bit2(ADDR_FILES_FOUND_HINT_2) +
        bit3(ADDR_FILES_FOUND_HINT_2) +
        bit4(ADDR_FILES_FOUND_HINT_2) +
        bit5(ADDR_FILES_FOUND_HINT_2) +
        bit6(ADDR_FILES_FOUND_HINT_2) +
        bit7(ADDR_FILES_FOUND_HINT_2) +
        bit0(ADDR_FILES_FOUND_HINT_3) +
        bit1(ADDR_FILES_FOUND_HINT_3) +
        bit2(ADDR_FILES_FOUND_HINT_3) +
        bit3(ADDR_FILES_FOUND_HINT_3) +
        bit4(ADDR_FILES_FOUND_HINT_3) +
        bit5(ADDR_FILES_FOUND_HINT_3) +
        bit1(ADDR_FILES_FOUND_HINT_4) +
        bit2(ADDR_FILES_FOUND_HINT_4) +
        bit3(ADDR_FILES_FOUND_HINT_4) +
        bit4(ADDR_FILES_FOUND_HINT_4) +
        bit6(ADDR_FILES_FOUND_HINT_4) +
        bit2(ADDR_FILES_FOUND_HINT_5) +
        bit3(ADDR_FILES_FOUND_HINT_5) +
        bit4(ADDR_FILES_FOUND_HINT_5) +
        bit5(ADDR_FILES_FOUND_HINT_5) +
        bit6(ADDR_FILES_FOUND_HINT_5) +
        bit3(ADDR_FILES_FOUND_HINT_6) +
        bit1(ADDR_FILES_FOUND_HINT_7) +
        bit2(ADDR_FILES_FOUND_HINT_7) +
        bit5(ADDR_FILES_FOUND_HINT_7) +
        bit6(ADDR_FILES_FOUND_HINT_7) +
        bit7(ADDR_FILES_FOUND_HINT_7) +
        bit0(ADDR_FILES_FOUND_HINT_8) +
        bit1(ADDR_FILES_FOUND_HINT_8) +
        bit1(ADDR_FILES_FOUND_HINT_9) +
        bit2(ADDR_FILES_FOUND_HINT_9)
}

// LOOKUPS

ChapterLookup = {
    1: "Chapter 1",
    2: "Chapter 2",
    3: "Chapter 3",
    4: "Chapter 4",
    5: "Chapter 5-1",
    6: "Chapter 5-2",
    7: "Chapter 6",
}

LocationLookup = {
    0x00: "Power Plant Entrance (1971)",
    0x01: "Power Plant Entrance (1972)",
    0x02: "Power Plant Entrance (1988)",
    0x03: "Power Plant Entrance (2004)",
    0x04: "Power Plant Chimney (1971)",
    0x05: "Power Plant Chimney (1972)",
    0x06: "Power Plant Chimney (1988)",
    0x07: "Power Plant Chimney (2004)",
    0x08: "Power Plant Loading Bay (1971)",
    0x09: "Power Plant Loading Bay (1972)",
    0x0A: "Power Plant Loading Bay (1988)",
    0x0B: "Power Plant Loading Bay (2004)",
    0x0C: "Power Plant Transmission Facility (1971)",
    0x0D: "Power Plant Transmission Facility (1972)",
    0x0E: "Power Plant Transmission Facility (1988)",
    0x0F: "Power Plant Transmission Facility (2004)",
    0x10: "Power Plant B1F Passage (1971)",
    0x11: "Power Plant B1F Passage (1972)",
    0x12: "Power Plant B1F Passage (1988)",
    0x13: "Power Plant B1F Passage (2004)",
    0x14: "Power Plant Central Control Room (1971)",
    0x15: "Power Plant Central Control Room (1972)",
    0x16: "Power Plant Central Control Room (1988)",
    0x17: "Power Plant Central Control Room (2004)",
    0x18: "Power Plant Director's Office (1971)",
    0x19: "Power Plant Director's Office (1972)",
    0x1A: "Power Plant Director's Office (1988)",
    0x1B: "Power Plant Director's Office (2004)",
    0x1C: "Power Plant Transformer Room (1971)",
    0x1D: "Power Plant Transformer Room (1972)",
    0x1E: "Power Plant Transformer Room (1988)",
    0x1F: "Power Plant Transformer Room (2004)",
    0x20: "Power Plant Fuel Storage (1971)",
    0x21: "Power Plant Fuel Storage (1972)",
    0x22: "Power Plant Fuel Storage (1988)",
    0x23: "Power Plant Fuel Storage (2004)",
    0x24: "Power Plant B2F Passage (1971)",
    0x25: "Power Plant B2F Passage (1972)",
    0x26: "Power Plant B2F Passage (1988)",
    0x27: "Power Plant B2F Passage (2004)",
    0x28: "Power Plant Turbine Room (1971)",
    0x29: "Power Plant Turbine Room (1972)",
    0x2A: "Power Plant Turbine Room (1988)",
    0x2B: "Power Plant Turbine Room (2004)",
    0x2C: "Power Plant Fuel Pool (1971)",
    0x2D: "Power Plant Fuel Pool (1972)",
    0x2E: "Power Plant Fuel Pool (1988)",
    0x2F: "Power Plant Fuel Pool (2004)",
    0x30: "Base Underground Passage (1971)",
    0x31: "Base Underground Passage (1972)",
    0x32: "Base Underground Passage (1988)",
    0x33: "Base Underground Passage (2004)",
    0x34: "Base Underground Passage (1971)",
    0x35: "Base Underground Passage (1972)",
    0x36: "Base Underground Passage (1988)",
    0x37: "Base Underground Passage (2004)",
    0x38: "Base Old Mine Tunnel (1971)",
    0x39: "Base Old Mine Tunnel (1972)",
    0x3A: "Base Old Mine Tunnel (1988)",
    0x3B: "Base Old Mine Tunnel (2004)",
    0x3C: "Base Underground Transport Route (1971)",
    0x3D: "Base Underground Transport Route (1972)",
    0x3E: "Base Underground Transport Route (1988)",
    0x3F: "Base Underground Transport Route (2004)",
    0x40: "Base Passage (1971)",
    0x41: "Base Passage (1972)",
    0x42: "Base Passage (1988)",
    0x43: "Base Passage (2004)",
    0x44: "Base Gas Laboratory (1971)",
    0x45: "Base Gas Laboratory (1972)",
    0x46: "Base Gas Laboratory (1988)",
    0x47: "Base Gas Laboratory (2004)",
    0x48: "Base Armory (1971)",
    0x49: "Base Armory (1972)",
    0x4A: "Base Armory (1988)",
    0x4B: "Base Armory (2004)",
    0x4C: "Power Plant Shaft (1971)",
    0x4D: "Power Plant Shaft (1972)",
    0x4E: "Power Plant Shaft (1988)",
    0x4F: "Power Plant Shaft (2004)",
    0x50: "Base Main Passage (1971)",
    0x51: "Base Main Passage (1972)",
    0x52: "Base Main Passage (1988)",
    0x53: "Base Main Passage (2004)",
    0x54: "Special Base Plan/Lab/Dome Rooms (1971)",
    0x55: "Special Base Plan/Lab/Dome Rooms (1972)",
    0x56: "Special Base Plan/Lab/Dome Rooms (1988)",
    0x57: "Special Base Plan/Lab/Dome Rooms (2004)",
    0x58: "Unknown / Missing Number Area (1971)",
    0x59: "Unknown / Missing Number Area (1972)",
    0x5A: "Unknown / Missing Number Area (1988)",
    0x5B: "Unknown / Missing Number Area (2004)",
    0x5C: "Base Command Room (1971)",
    0x5D: "Base Command Room (1972)",
    0x5E: "Base Command Room (1988)",
    0x5F: "Base Command Room (2004)",
    0x60: "??? Time-Space Control Room (1971)",
    0x61: "??? Time-Space Control Room (1972)",
    0x62: "??? Time-Space Control Room (1988)",
    0x63: "??? Time-Space Control Room (2004)",
    0x64: "Quarry (1971)",
    0x65: "Quarry (1972)",
    0x66: "Quarry (1988)",
    0x67: "Quarry (2004)",
    0x68: "Base Poison Gas Plant (1971)",
    0x69: "Base Poison Gas Plant (1972)",
    0x6A: "Base Poison Gas Plant (1988)",
    0x6B: "Base Poison Gas Plant (2004)",
    0x6C: "Base Lighthouse (1971)",
    0x6D: "Base Lighthouse (1972)",
    0x6E: "Base Lighthouse (1988)",
    0x6F: "Base Lighthouse (2004)",
    0x70: "Coast (1971)",
    0x71: "Coast (1972)",
    0x72: "Coast (1988)",
    0x73: "Coast (2004)",
    0x74: "Undersea Base (1971)",
    0x75: "Undersea Base (1972)",
    0x76: "Undersea Base (1988)",
    0x77: "Undersea Base (2004)",
    0x78: "??? Cultivation Chamber (1971)",
    0x79: "??? Cultivation Chamber (1972)",
    0x7A: "??? Cultivation Chamber (1988)",
    0x7B: "??? Cultivation Chamber (2004)",
}

PlayerCharacterLookup = {
    0x00: "Kamen Rider Ichigo",
    0x01: "Hongo Takeshi",
    0x02: "Kamen Rider V3",
    0x03: "Ichimonji Hayato",
    0x04: "Kamen Rider Black",
    0x05: "Minami Kotaro",
    0x06: "Kamen Rider Agito",
    0x07: "Tsugami Shouichi",
}

// ACHIEVEMENTS

achievement(
    title = "Major in Power Planting", points = 10,
    description = "Collect all Files and Keywords found in Chapter 1",
    trigger =
        IsCurrentChapter(CHAPTER_ONE) &&
        prev(ChapterOneHintFilesFound()) == CHAPTER_ONE_HINT_FILES_TOTAL - 1 &&
        measured(ChapterOneHintFilesFound() == CHAPTER_ONE_HINT_FILES_TOTAL)
)

achievement(
    title = "Vintage Fashion", points = 1,
    description = "Start a playthrough using Ichigo and Nigo's old outfits",
    trigger = VintageFashionTrigger()
)

// RICH PRESENCE START

rich_presence_conditional_display(currentChapter > 0, "[{0}] {1} is in {2} | ❤️{3}/{4} | 💾 {5}",
    rich_presence_lookup("CurrentChapter", currentChapter, ChapterLookup),
    rich_presence_lookup("CurrentPlayerCharacter", currentPlayerCharacter, PlayerCharacterLookup),
    rich_presence_lookup("CurrentLocation", currentLocation, LocationLookup),
    rich_presence_value("Number", currentHealth),
    rich_presence_value("Number", maxHealth),
    rich_presence_value("Number", saveCounter)
)
rich_presence_display("Playing Kamen Rider: Seigi no Keifu")

// RICH PRESENCE END
