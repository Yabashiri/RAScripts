// Kamen Rider: Seigi no Keifu
// #ID = 31667

CHAPTER_ONE = 1
CHAPTER_TWO = 2
CHAPTER_THREE = 3
CHAPTER_FOUR = 4
CHAPTER_FIVE_FIRST_HALF = 5
CHAPTER_FIVE_SECOND_HALF = 6
CHAPTER_SIX = 7
CHAPTER_ONE_DOCUMENTS_TOTAL = 8
CHAPTER_TWO_DOCUMENTS_TOTAL = 7
CHAPTER_THREE_DOCUMENTS_TOTAL = 9
CHAPTER_FOUR_DOCUMENTS_TOTAL = 9
CHAPTER_FIVE_DOCUMENTS_TOTAL = 31
SETTING_THE_STAGE_TARGET = 10
MOVE_LEVEL_LV3 = 2
PLAYER_KAMEN_RIDER_ICHIGO = 0x00
PLAYER_HONGO_TAKESHI = 0x01
PLAYER_KAMEN_RIDER_V3 = 0x02
PLAYER_ICHIMONJI_HAYATO = 0x03
PLAYER_KAMEN_RIDER_BLACK = 0x04
PLAYER_MINAMI_KOTARO = 0x05
PLAYER_KAMEN_RIDER_AGITO = 0x06
PLAYER_TSUGAMI_SHOUICHI = 0x07
ENEMY_SEMIMINGA = 0x28
ENEMY_EVIL_EYE_COMPLETE_FORM = 0x4C

// MEMORY: game state

ADDR_TITLE_SCREEN_TASK_HANDLE = 0x00400220
ADDR_SCENE_CHANGE_FLAGS = 0x0041eff2
ADDR_CURRENT_SCENE_POINTER = 0x0041f080
ADDR_CURRENT_SCREEN = 0x0041f084
ADDR_CURRENT_LOCATION = 0x0041f08c
ADDR_REQUESTED_LOCATION = 0x0041f090
ADDR_CURRENT_CHAPTER = 0x0041f0a0
OFFSET_CURRENT_SCENE = 0x6C
// Script flag bit 5: Rider Select active; bit 6: Clear-data flag.
ADDR_SCRIPT_FLAGS_10000_10007 = 0x0041f606
ADDR_SAVE_COUNTER = 0x00428234
ADDR_PLAY_DATA = 0x0042c148
ADDR_ENEMY_1_MODEL_ID = 0x004a420c
ADDR_ENEMY_1_CURRENT_HEALTH = 0x004a4214
ADDR_ENEMY_2_MODEL_ID = 0x004ad6fc
ADDR_CURRENT_PLAYER_CHARACTER = 0x0044badc
ADDR_CURRENT_HEALTH = 0x0044bae4
ADDR_MAX_HEALTH = 0x0044bae8

titleScreenTaskHandle = word(ADDR_TITLE_SCREEN_TASK_HANDLE)
currentScenePointer = dword(ADDR_CURRENT_SCENE_POINTER)
currentScreen = dword(ADDR_CURRENT_SCREEN)
currentLocation = dword(ADDR_CURRENT_LOCATION)
requestedLocation = dword(ADDR_REQUESTED_LOCATION)
currentChapter = dword(ADDR_CURRENT_CHAPTER)
saveCounter = dword(ADDR_SAVE_COUNTER)
enemy1ModelId = dword(ADDR_ENEMY_1_MODEL_ID)
enemy1CurrentHealth = dword(ADDR_ENEMY_1_CURRENT_HEALTH)
enemy2ModelId = dword(ADDR_ENEMY_2_MODEL_ID)
currentPlayerCharacter = dword(ADDR_CURRENT_PLAYER_CHARACTER)
currentHealth = dword(ADDR_CURRENT_HEALTH)
maxHealth = dword(ADDR_MAX_HEALTH)

// MEMORY: recovery item inventory

ADDR_ITEM_BOX_BASE = 0x00424774
ITEM_BOX_STRIDE = 0x1b0
RECOVERY_ITEM_SLOT_ID_OFFSET = 0x02
ITEM_SLOT_STRIDE = 0x24
ADDR_MENU_ITEM_COMMAND = 0x005e91d8
MENU_ITEM_COMMAND_SET = 1

// Four era/Rider item boxes, each with six dedicated recovery-item slots.
RecoveryItemSlotAddresses = []
for itemBox in range(0, 3)
    for slot in range(0, 5)
        array_push(RecoveryItemSlotAddresses,
            ADDR_ITEM_BOX_BASE + itemBox * ITEM_BOX_STRIDE +
            RECOVERY_ITEM_SLOT_ID_OFFSET + slot * ITEM_SLOT_STRIDE)

menuItemCommand = dword(ADDR_MENU_ITEM_COMMAND)

// MEMORY: enemy work slots

ADDR_ENEMY_SLOT_1_BASE = 0x0049dea0
ENEMY_SLOT_STRIDE = 0x94f0
OFFSET_ENEMY_ACTIVE_FLAGS = 0x00
OFFSET_ENEMY_DEATH_FLAGS = 0x03
OFFSET_ENEMY_CURRENT_HEALTH = 0x6374
OFFSET_ENEMY_MAX_HEALTH = 0x6378

EnemySlotBases = []
for slot in range(0, 7)
    array_push(EnemySlotBases, ADDR_ENEMY_SLOT_1_BASE + slot * ENEMY_SLOT_STRIDE)

// MEMORY: move levels

ADDR_LOW_POWER_PUNCH_MOVE_LEVEL = 0x0044e968
ADDR_HIGH_POWER_PUNCH_MOVE_LEVEL = 0x0044e96c
ADDR_LOW_POWER_KICK_MOVE_LEVEL = 0x0044e970
ADDR_HIGH_POWER_KICK_MOVE_LEVEL = 0x0044e974

lowPowerPunchMoveLevel = dword(ADDR_LOW_POWER_PUNCH_MOVE_LEVEL)
highPowerPunchMoveLevel = dword(ADDR_HIGH_POWER_PUNCH_MOVE_LEVEL)
lowPowerKickMoveLevel = dword(ADDR_LOW_POWER_KICK_MOVE_LEVEL)
highPowerKickMoveLevel = dword(ADDR_HIGH_POWER_KICK_MOVE_LEVEL)

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

ChapterOneDocumentFlags = [
    [ADDR_FILES_FOUND_KEY_1, 4],  // Elevator Operation
    [ADDR_FILES_FOUND_KEY_1, 5],  // Gate Controller
    [ADDR_FILES_FOUND_HINT_1, 4], // Gameplay Manual 1
    [ADDR_FILES_FOUND_HINT_2, 3], // Gate Controller Manual
    [ADDR_FILES_FOUND_HINT_2, 5], // Pool Control Device Manual
    [ADDR_FILES_FOUND_HINT_2, 6], // Notice from Security
    [ADDR_FILES_FOUND_HINT_3, 1], // Room Access Code Change Order
    [ADDR_FILES_FOUND_HINT_4, 3], // Cultivation Chamber file
]

ChapterTwoDocumentFlags = [
    [ADDR_FILES_FOUND_KEY_1, 6],  // Transformer Repair
    [ADDR_FILES_FOUND_HINT_4, 4], // Storage Record Fragment
    [ADDR_FILES_FOUND_HINT_4, 5], // Newspaper Clipping
    [ADDR_FILES_FOUND_HINT_4, 6], // Transformer Repair Report
    [ADDR_FILES_FOUND_HINT_4, 7], // Director's Memo 1
    [ADDR_FILES_FOUND_HINT_5, 0], // Gene Fusion Experiment Record
    [ADDR_FILES_FOUND_HINT_5, 1], // General Black's Operation Plan
]

ChapterThreeDocumentFlags = [
    [ADDR_FILES_FOUND_KEY_3, 3],  // Director Office Power
    [ADDR_FILES_FOUND_HINT_1, 5], // Gameplay Manual 2
    [ADDR_FILES_FOUND_HINT_6, 2], // Transmission Line Change Rules
    [ADDR_FILES_FOUND_HINT_6, 3], // About Director Office Power
    [ADDR_FILES_FOUND_HINT_6, 4], // Letter from Yuki
    [ADDR_FILES_FOUND_HINT_6, 5], // Unfinished Letter
    [ADDR_FILES_FOUND_HINT_6, 6], // Director's Memo 2
    [ADDR_FILES_FOUND_HINT_6, 7], // Doctor Shinigami Operation Plan 1
    [ADDR_FILES_FOUND_HINT_8, 1], // Research Tape Organization
]

ChapterFourDocumentFlags = [
    [ADDR_FILES_FOUND_KEY_2, 0],  // Punch Cards
    [ADDR_FILES_FOUND_KEY_2, 7],  // Ventilation System
    [ADDR_FILES_FOUND_HINT_1, 6], // Gameplay Manual 3
    [ADDR_FILES_FOUND_HINT_7, 5], // Power Plant Staff Memo
    [ADDR_FILES_FOUND_HINT_7, 6], // Ventilation System Manual
    [ADDR_FILES_FOUND_HINT_8, 0], // Random Number Table
    [ADDR_FILES_FOUND_HINT_8, 2], // Research Report
    [ADDR_FILES_FOUND_HINT_8, 3], // Shocker Leader's Orders
    [ADDR_FILES_FOUND_HINT_8, 4], // TIERRA Transfer Record
]

ChapterFiveDocumentFlags = [
    [ADDR_FILES_FOUND_KEY_2, 1],  // Magnetic Lock
    [ADDR_FILES_FOUND_KEY_2, 2],  // Barcode Key
    [ADDR_FILES_FOUND_KEY_2, 3],  // Pool Control Device
    [ADDR_FILES_FOUND_KEY_2, 4],  // Lift
    [ADDR_FILES_FOUND_KEY_2, 5],  // A-33
    [ADDR_FILES_FOUND_KEY_2, 6],  // Electromagnetic Shield
    [ADDR_FILES_FOUND_KEY_3, 0],  // Magnetic Field Generator
    [ADDR_FILES_FOUND_KEY_3, 1],  // Infrared Sensor
    [ADDR_FILES_FOUND_HINT_1, 7], // Gameplay Manual 4
    [ADDR_FILES_FOUND_HINT_2, 0], // Gameplay Manual 5
    [ADDR_FILES_FOUND_HINT_2, 1], // Gameplay Manual 6
    [ADDR_FILES_FOUND_HINT_3, 2], // Anti-Intruder Program 1
    [ADDR_FILES_FOUND_HINT_3, 3], // Work Report
    [ADDR_FILES_FOUND_HINT_3, 4], // Ambassador Hell Operation Plan
    [ADDR_FILES_FOUND_HINT_3, 6], // Hieroglyphic Genetic Blueprint
    [ADDR_FILES_FOUND_HINT_3, 7], // IC Recorder
    [ADDR_FILES_FOUND_HINT_4, 0], // Director Notes 4
    [ADDR_FILES_FOUND_HINT_4, 1], // Undersea Base Construction Report
    [ADDR_FILES_FOUND_HINT_5, 3], // Scientist Memo
    [ADDR_FILES_FOUND_HINT_5, 7], // Combatant Memo
    [ADDR_FILES_FOUND_HINT_6, 0], // Director Notes 3
    [ADDR_FILES_FOUND_HINT_6, 1], // Small Cassette Recorder
    [ADDR_FILES_FOUND_HINT_7, 0], // Doctor Shinigami Plan 2
    [ADDR_FILES_FOUND_HINT_7, 1], // Anti-Intruder Program 2
    [ADDR_FILES_FOUND_HINT_7, 2], // Shocker Scientist Diary
    [ADDR_FILES_FOUND_HINT_7, 3], // Cassette Recorder
    [ADDR_FILES_FOUND_HINT_7, 4], // Director Notes 2
    [ADDR_FILES_FOUND_HINT_8, 5], // Shocker Scientist Roster
    [ADDR_FILES_FOUND_HINT_8, 6], // Colonel Zol Plan
    [ADDR_FILES_FOUND_HINT_8, 7], // Director Notes 1
    [ADDR_FILES_FOUND_HINT_9, 0], // Tape Recorder
]

// Script pickup flags 2232-2239. Bee Woman is flag 2235 (bit 3).
ADDR_KAIJIN_FILE_PICKUP_FLAGS_2232_2239 = 0x0041f23b

// FUNCTIONS

function IsCurrentChapter(chapter) => currentChapter == chapter

// Recovery slots are either empty (0xFFFF) or contain IDs 0x07D1-0x07D4.
// Bit 3 of the ID's high byte is therefore an empty-slot flag.
SettingTheStageProgressConditions = []
for slotAddress in RecoveryItemSlotAddresses
{
    array_push(SettingTheStageProgressConditions,
        prev(menuItemCommand) == MENU_ITEM_COMMAND_SET &&
        prev(bit3(slotAddress + 1)) == 0 &&
        bit3(slotAddress + 1) == 1
    )

    array_push(SettingTheStageProgressConditions, deduct(
        prev(bit3(slotAddress + 1)) == 1 &&
        bit3(slotAddress + 1) == 0
    ))
}

function DidChangeLogicalLocation() =>
    // Bits 0-1 select the era/Rider variant. Bits 2-6 identify the location.
    prev(bit2(ADDR_CURRENT_LOCATION)) != bit2(ADDR_CURRENT_LOCATION) ||
    prev(bit3(ADDR_CURRENT_LOCATION)) != bit3(ADDR_CURRENT_LOCATION) ||
    prev(bit4(ADDR_CURRENT_LOCATION)) != bit4(ADDR_CURRENT_LOCATION) ||
    prev(bit5(ADDR_CURRENT_LOCATION)) != bit5(ADDR_CURRENT_LOCATION) ||
    prev(bit6(ADDR_CURRENT_LOCATION)) != bit6(ADDR_CURRENT_LOCATION)

function DidLeaveCurrentScreen() =>
    prev(currentScreen) != currentScreen ||
    DidChangeLogicalLocation()

function DoorTransitionRequested() =>
    // afFieldChangeReq writes the requested field and raises bit 7. Camera
    // changes inside the current field use requested screen and bit 6 instead.
    prev(bit7(ADDR_SCENE_CHANGE_FLAGS)) == 0 &&
    bit7(ADDR_SCENE_CHANGE_FLAGS) == 1 &&
    requestedLocation != currentLocation

function PreviousEnemySlotActiveCount()
{
    activeCount = 0

    for slotBase in EnemySlotBases
        activeCount = activeCount + prev(bit0(slotBase + OFFSET_ENEMY_ACTIVE_FLAGS))

    return activeCount
}

function PreviousEnemySlotDeathCount()
{
    deathCount = 0

    for slotBase in EnemySlotBases
        deathCount = deathCount + prev(bit0(slotBase + OFFSET_ENEMY_DEATH_FLAGS))

    return deathCount
}

function AtLeastSixEnemySlotsWereAlive() =>
    // Comparing the two sums avoids unsigned underflow during slot cleanup.
    PreviousEnemySlotActiveCount() >= PreviousEnemySlotDeathCount() + 6

function DoorDragonTrigger()
{
    doorEvent = DoorTransitionRequested()
    return AtLeastSixEnemySlotsWereAlive() && trigger_when(doorEvent)
}

function CurrentSceneAddress() => currentScenePointer + OFFSET_CURRENT_SCENE

function IsCurrentScene(scene) => ascii_string_equals(CurrentSceneAddress(), scene)

function IsWatchingCutscene() => ascii_string_equals(CurrentSceneAddress(), "EV", 2)

function IsTitleScreenTaskRunning() => titleScreenTaskHandle != 0

function IsRiderSelectActive() => bit5(ADDR_SCRIPT_FLAGS_10000_10007) == 1

function IsClearDataFlagSet() => bit6(ADDR_SCRIPT_FLAGS_10000_10007) == 1

function HasClearData() => bit(10, ADDR_PLAY_DATA) == 1

function IsCurrentPlayerAgito() =>
    currentPlayerCharacter == PLAYER_KAMEN_RIDER_AGITO ||
    currentPlayerCharacter == PLAYER_TSUGAMI_SHOUICHI

function IsCurrentPlayerBlack() =>
    currentPlayerCharacter == PLAYER_KAMEN_RIDER_BLACK ||
    currentPlayerCharacter == PLAYER_MINAMI_KOTARO

function IsCurrentPlayerV3() =>
    currentPlayerCharacter == PLAYER_KAMEN_RIDER_V3 ||
    currentPlayerCharacter == PLAYER_ICHIMONJI_HAYATO

function IsCurrentPlayerIchigo() =>
    currentPlayerCharacter == PLAYER_KAMEN_RIDER_ICHIGO ||
    currentPlayerCharacter == PLAYER_HONGO_TAKESHI

function MoveLv3Count() =>
    lowPowerPunchMoveLevel / MOVE_LEVEL_LV3 +
    highPowerPunchMoveLevel / MOVE_LEVEL_LV3 +
    lowPowerKickMoveLevel / MOVE_LEVEL_LV3 +
    highPowerKickMoveLevel / MOVE_LEVEL_LV3

function PrevMoveLv3Count() =>
    prev(lowPowerPunchMoveLevel) / MOVE_LEVEL_LV3 +
    prev(highPowerPunchMoveLevel) / MOVE_LEVEL_LV3 +
    prev(lowPowerKickMoveLevel) / MOVE_LEVEL_LV3 +
    prev(highPowerKickMoveLevel) / MOVE_LEVEL_LV3

function RiderSelectFlagsChanged() =>
    prev(bit5(ADDR_SCRIPT_FLAGS_10000_10007)) != bit5(ADDR_SCRIPT_FLAGS_10000_10007) ||
    prev(bit6(ADDR_SCRIPT_FLAGS_10000_10007)) != bit6(ADDR_SCRIPT_FLAGS_10000_10007)

function VintageFashionTrigger() =>
    IsTitleScreenTaskRunning() &&
    IsRiderSelectActive() &&
    IsClearDataFlagSet() &&
    RiderSelectFlagsChanged()

function CountSetFlags(flagList)
{
    count = 0
    for flag in flagList
        count = count + bit(flag[1], flag[0])
    return count
}

function CollectionCompleted(count, total) =>
    prev(count) < total &&
    measured(count == total)

function IsChapterFive() =>
    IsCurrentChapter(CHAPTER_FIVE_FIRST_HALF) ||
    IsCurrentChapter(CHAPTER_FIVE_SECOND_HALF)

function SettingTheStageTrigger()
{
    reset = never(
        !IsChapterFive() ||
        DidLeaveCurrentScreen()
    )

    progress = measured(tally(
        SETTING_THE_STAGE_TARGET,
        SettingTheStageProgressConditions
    ))

    return IsChapterFive() && progress && reset
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

EnemyLookup = {
    0x1C: "Bone Combatman",
    0x1D: "Wolf Combatman",
    0x1E: "Black Combatman",
    0x1F: "Reinforced Shocker Combatman",
    0x20: "Red Combatman",
    0x21: "Reinforced Shocker Combatman (Red)",
    0x22: "Shocker Scientist",
    0x23: "Gel Shocker Combatman",
    0x24: "Gel Shocker Scientist",
    0x26: "Garagaranda",
    0x27: "Worm Man",
    0x28: "Semiminga",
    0x29: "Gillizames",
    0x2A: "Siomaneking",
    0x2B: "Sea Dragons",
    0x2E: "Imorigues",
    0x2F: "Kamikirikid",
    0x30: "Hell Chameleon Transmigrated",
    0x31: "Hilchameleon",
    0x32: "Ganikoumoru",
    0x33: "Sasori Tokagues",
    0x34: "Sasori Tokagues Transmigrated",
    0x35: "Utsubo Games",
    0x36: "Washi Kamaguilli",
    0x37: "Haetori Bachi",
    0x38: "Isoguin Jaguar",
    0x39: "Isoguin Jaguar Transmigrated",
    0x3A: "Ika Devil",
    0x3B: "Goaster",
    0x3C: "Namekujira",
    0x3D: "Hilguerrilla",
    0x3E: "Kamestone",
    0x3F: "Gilgamess",
    0x40: "Namazugillar",
    0x41: "Zanjioh",
    0x42: "Zanjioh Strengthened",
    0x43: "Golden Wolf Man",
    0x44: "Man Spider",
    0x45: "Sarracenian",
    0x46: "Sabotegron",
    0x47: "Dokugander",
    0x48: "Armadillong",
    0x49: "Eiking",
    0x4A: "Bee Woman",
    0x4C: "Evil Eye Complete Form",
    0x52: "Evil Eye Ultimate Form",
}

// ACHIEVEMENTS

achievement(
    title = "Major in Power Planting", points = 5,
    description = "Collect all Files and Keywords found in Chapter 1",
    trigger =
        IsCurrentChapter(CHAPTER_ONE) &&
        CollectionCompleted(CountSetFlags(ChapterOneDocumentFlags), CHAPTER_ONE_DOCUMENTS_TOTAL)
)

achievement(
    title = "Written in Black", points = 5,
    description = "Collect all Files and Keywords found in Chapter 2",
    trigger =
        IsCurrentChapter(CHAPTER_TWO) &&
        CollectionCompleted(CountSetFlags(ChapterTwoDocumentFlags), CHAPTER_TWO_DOCUMENTS_TOTAL)
)

achievement(
    title = "V3-Rified Sources", points = 5,
    description = "Collect all Hint Files found in Chapter 3",
    trigger =
        IsCurrentChapter(CHAPTER_THREE) &&
        CollectionCompleted(CountSetFlags(ChapterThreeDocumentFlags), CHAPTER_THREE_DOCUMENTS_TOTAL)
)

achievement(
    title = "The First Edition", points = 5,
    description = "Collect all Hint Files found in Chapter 4",
    trigger =
        IsCurrentChapter(CHAPTER_FOUR) &&
        CollectionCompleted(CountSetFlags(ChapterFourDocumentFlags), CHAPTER_FOUR_DOCUMENTS_TOTAL)
)

achievement(
    title = "Rider’s Digest", points = 10,
    description = "Collect all Hint Files found in Chapter 5",
    trigger =
        IsChapterFive() &&
        CollectionCompleted(CountSetFlags(ChapterFiveDocumentFlags), CHAPTER_FIVE_DOCUMENTS_TOTAL)
)

achievement(
    title = "The Buzz on Bee Woman", points = 1,
    description = "Collect Bee Woman's file in Chapter 6",
    trigger =
        IsCurrentChapter(CHAPTER_SIX) &&
        CollectionCompleted(bit3(ADDR_KAIJIN_FILE_PICKUP_FLAGS_2232_2239), 1)
)

achievement(
    title = "Setting the Stage", points = 2,
    description = "In Chapter 5, use SET to place 10 Life or Energy Packs on the ground without leaving the current screen",
    trigger = SettingTheStageTrigger()
)

achievement(
    title = "Nutritional Bento Power",
    description = "Upgrade all 4 of Agito's moves to Lv.3 during Chapter 1 without Clear Data",
    points = 10,
    type = "missable",
    trigger =
        !HasClearData() &&
        IsCurrentChapter(CHAPTER_ONE) &&
        IsCurrentPlayerAgito() &&
        PrevMoveLv3Count() == 3 &&
        measured(MoveLv3Count() == 4)
)

achievement(
    title = "The Making of Creation King",
    description = "Upgrade all 4 of Black's moves to Lv.3 during Chapter 2 without Clear Data",
    points = 10,
    type = "missable",
    trigger =
        !HasClearData() &&
        IsCurrentChapter(CHAPTER_TWO) &&
        IsCurrentPlayerBlack() &&
        PrevMoveLv3Count() == 3 &&
        measured(MoveLv3Count() == 4)
)

achievement(
    title = "Ride the Twin Winds",
    description = "Upgrade all 4 of V3's moves to Lv.3 during Chapter 3 without Clear Data",
    points = 10,
    type = "missable",
    trigger =
        !HasClearData() &&
        IsCurrentChapter(CHAPTER_THREE) &&
        IsCurrentPlayerV3() &&
        PrevMoveLv3Count() == 3 &&
        measured(MoveLv3Count() == 4)
)

achievement(
    title = "An Old Hero, an Old Legend",
    description = "Upgrade all 4 of Ichigo's moves to Lv.3 during Chapter 4 without Clear Data",
    points = 10,
    type = "missable",
    trigger =
        !HasClearData() &&
        IsCurrentChapter(CHAPTER_FOUR) &&
        IsCurrentPlayerIchigo() &&
        PrevMoveLv3Count() == 3 &&
        measured(MoveLv3Count() == 4)
)

achievement(
    title = "Vintage Fashion", points = 1,
    description = "Start a playthrough using Ichigo and Nigo's old outfits",
    trigger = VintageFashionTrigger()
)

achievement(
    title = "The Mystery of the Power Plant",
    description = "Finish Chapter 1",
    points = 5,
    type = "progression",
    trigger =
        prior(IsCurrentScene("EV013_03")) &&
        currentLocation == 95 &&
        prev(IsCurrentChapter(CHAPTER_ONE)) &&
        IsCurrentChapter(CHAPTER_TWO)
)

achievement(
    title = "The Evil Lurking in the Ruins",
    description = "Finish Chapter 2",
    points = 5,
    type = "progression",
    trigger =
        prior(IsCurrentScene("EV020_03")) &&
        currentLocation == 94 &&
        prev(IsCurrentChapter(CHAPTER_TWO)) &&
        IsCurrentChapter(CHAPTER_THREE)
)

achievement(
    title = "Some Kamen Rider: Rider Generation",
    description = "Finish Chapter 5",
    points = 10,
    type = "progression",
    trigger =
        prior(IsCurrentScene("EV098_00")) &&
        currentLocation == 123 &&
        prev(IsCurrentChapter(CHAPTER_FIVE_SECOND_HALF)) &&
        IsCurrentChapter(CHAPTER_SIX)
)

achievement(
    title = "Kamen Rider? In This Era?",
    description = "Defeat Semiminga after learning of their evil plan",
    points = 2,
    type = "progression",
    trigger =
        enemy1CurrentHealth == 0 &&
        currentLocation == 23 &&
        prev(enemy1ModelId) == ENEMY_SEMIMINGA &&
        enemy1ModelId == 0
)

achievement(
    title = "Door Dragon",
    description = "Enter a door with at least 6 enemies chasing you",
    points = 1,
    trigger = DoorDragonTrigger()
)

achievement(
    title = "Now Let Him Cook",
    description = "Finish the game as Kamen Rider Agito",
    points = 10,
    type = "win_condition",
    trigger =
        prev(enemy1ModelId) == ENEMY_EVIL_EYE_COMPLETE_FORM &&
        enemy1ModelId == 0 &&
        currentLocation == 98 &&
        IsCurrentChapter(CHAPTER_SIX) &&
        currentPlayerCharacter == PLAYER_KAMEN_RIDER_AGITO
)

achievement(
    title = "My Battle, Our Battle",
    description = "Finish the game as Kamen Rider Ichigo",
    points = 10,
    type = "win_condition",
    id = 617219,
    trigger =
        prev(enemy1ModelId) == ENEMY_EVIL_EYE_COMPLETE_FORM &&
        enemy1ModelId == 0 &&
        currentLocation == 98 &&
        IsCurrentChapter(CHAPTER_SIX) &&
        currentPlayerCharacter == PLAYER_KAMEN_RIDER_ICHIGO
)

achievement(
    title = "Light and Darkness",
    description = "Finish the game as Kamen Rider V3",
    points = 10,
    type = "win_condition",
    trigger =
        prev(enemy1ModelId) == ENEMY_EVIL_EYE_COMPLETE_FORM &&
        enemy1ModelId == 0 &&
        currentLocation == 98 &&
        IsCurrentChapter(CHAPTER_SIX) &&
        currentPlayerCharacter == PLAYER_KAMEN_RIDER_V3
)

achievement(
    title = "It's Our Turn Next",
    description = "Finish the game as Kamen Rider Black",
    points = 10,
    type = "win_condition",
    trigger =
        prev(enemy1ModelId) == ENEMY_EVIL_EYE_COMPLETE_FORM &&
        enemy1ModelId == 0 &&
        currentLocation == 98 &&
        IsCurrentChapter(CHAPTER_SIX) &&
        currentPlayerCharacter == PLAYER_KAMEN_RIDER_BLACK
)

// RICH PRESENCE START

rich_presence_conditional_display(IsWatchingCutscene(), "{0} is watching a cutscene in {1} | ❤️{2}/{3} | 💾 {4}",
    rich_presence_lookup("CurrentPlayerCharacter", currentPlayerCharacter, PlayerCharacterLookup),
    rich_presence_lookup("CurrentLocation", currentLocation, LocationLookup),
    rich_presence_value("Number", currentHealth),
    rich_presence_value("Number", maxHealth),
    rich_presence_value("Number", saveCounter)
)

rich_presence_conditional_display(enemy1ModelId >= 0x26, "{0} is fighting {1} in {2} | ❤️{3}/{4} | 💾 {5}",
    rich_presence_lookup("CurrentPlayerCharacter", currentPlayerCharacter, PlayerCharacterLookup),
    rich_presence_lookup("CurrentEnemy", enemy1ModelId, EnemyLookup),
    rich_presence_lookup("CurrentLocation", currentLocation, LocationLookup),
    rich_presence_value("Number", currentHealth),
    rich_presence_value("Number", maxHealth),
    rich_presence_value("Number", saveCounter)
)

rich_presence_conditional_display(enemy2ModelId >= 0x26, "{0} is fighting {1} in {2} | ❤️{3}/{4} | 💾 {5}",
    rich_presence_lookup("CurrentPlayerCharacter", currentPlayerCharacter, PlayerCharacterLookup),
    rich_presence_lookup("CurrentEnemy", enemy2ModelId, EnemyLookup),
    rich_presence_lookup("CurrentLocation", currentLocation, LocationLookup),
    rich_presence_value("Number", currentHealth),
    rich_presence_value("Number", maxHealth),
    rich_presence_value("Number", saveCounter)
)

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
