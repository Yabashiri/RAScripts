// All Kamen Rider: Rider Generation 2
// #ID = 31775

True = 1
False = 0
CharactersTotal = 57
StagesCount = 45
MissionsCount = 90
RiderItemsTotal = 62

// Game states
game_state = byte(0x000ffd2c)
starting = 0x00
in_stage = 0x01
title_screen = 0x05 // also shop
character_selection = 0x06
stage_selection = 0x24

// Stages
World1_5 = 0x0DF415
World2_5 = 0x0DF469
World3_5 = 0x0DF4A5
World4_5 = 0x0DF4F9
World5_6 = 0x0DF541
World6_7 = 0x0DF595
World7_1 = 0x0DF5F5
World7_2 = 0x0DF601
World7_3 = 0x0DF60D
World7_4 = 0x0DF619
World7_5 = 0x0DF625
World7_6 = 0x0DF631
World7_7 = 0x0DF63D
World7_8 = 0x0DF649

// Stages states
stage_state = 0x2cef48
playing = 0x00
clear = 0x04
not_in_stage = 0x05

// Character stats
player1_endurance_stage_selection = 0x23111c

player2_endurance_stage_selection = 0x231150

player1_endurance_shop = 0x231368
player1_attack_shop = 0x23136c
player1_defence_shop = 0x231370
player1_skill_shop = 0x231374

player2_endurance_shop = 0x23139c
player2_attack_shop = 0x2313a0
player2_defence_shop = 0x2313a4
player2_skill_shop = 0x2313a8

ultimate = 0xded18
ultimate_gauge_max = 0x1b
not_in_ultimate = 0x9054

missions = [
    0xdf3e2, 0xdf3e3, 0xdf3ee, 0xdf3ef, 0xdf3fa, 0xdf3fb, 0xdf406, 0xdf407, 0xdf412, 0xdf413, // WORLD 1
    0xdf41e, 0xdf41f, 0xdf42a, 0xdf42b, 0xdf436, 0xdf437, 0xdf442, 0xdf443, 0xdf44e, 0xdf44f, 0xdf45a, 0xdf45b, 0xdf466, 0xdf467, // WORLD 2
    0xdf472, 0xdf473, 0xdf47e, 0xdf47f, 0xdf48a, 0xdf48b, 0xdf496, 0xdf497, 0xdf4a2, 0xdf4a3, 0xdf4ae, 0xdf4af, 0xdf4ba, 0xdf4bb, // WORLD 3
    0xdf4c6, 0xdf4c7, 0xdf4d2, 0xdf4d3, 0xdf4de, 0xdf4df, 0xdf4ea, 0xdf4eb, 0xdf4f6, 0xdf4f7, // WORLD 4
    0xdf502, 0xdf503, 0xdf50e, 0xdf50f, 0xdf51a, 0xdf51b, 0xdf526, 0xdf527, 0xdf532, 0xdf533, 0xdf53e, 0xdf53f, // WORLD 5
    0xdf54a, 0xdf54b, 0xdf556, 0xdf557, 0xdf562, 0xdf563, 0xdf56e, 0xdf56f, 0xdf57a, 0xdf57b, 0xdf586, 0xdf587, 0xdf592, 0xdf593, // WORLD 6
    0xdf5f2, 0xdf5f3, 0xdf5fe, 0xdf5ff, 0xdf60a, 0xdf60b, 0xdf616, 0xdf617, 0xdf622, 0xdf623, 0xdf62e, 0xdf62f, 0xdf63a, 0xdf63b, 0xdf646, 0xdf647 // WORLD 7
]

easy_stages = [
    0xdf3e5, 0xdf3f1, 0xdf3fd, 0xdf409, 0xdf415, // WORLD 1
    0xdf421, 0xdf42d, 0xdf439, 0xdf445, 0xdf451, 0xdf45d, 0xdf469, // WORLD 2
    0xdf475, 0xdf481, 0xdf48d, 0xdf499, 0xdf4a5, 0xdf4b1, 0xdf4bd, // WORLD 3
    0xdf4c9, 0xdf4d5, 0xdf4e1, 0xdf4ed, 0xdf4f9, // WORLD 4
    0xdf505, 0xdf511, 0xdf51d, 0xdf529, 0xdf535, 0xdf541, // WORLD 5
    0xdf54d, 0xdf559, 0xdf565, 0xdf571, 0xdf57d, 0xdf589, 0xdf595, // WORLD 6
    0xdf5f5, 0xdf601, 0xdf60d, 0xdf619, 0xdf625, 0xdf631, 0xdf63d, 0xdf649 // WORLD 7
]

medium_stages = [
    0xdf3e6, 0xdf3f2, 0xdf3fe, 0xdf40a, 0xdf416, // WORLD 1
    0xdf422, 0xdf42e, 0xdf43a, 0xdf446, 0xdf452, 0xdf45e, 0xdf46a, // WORLD 2
    0xdf476, 0xdf482, 0xdf48e, 0xdf49a, 0xdf4a6, 0xdf4b2, 0xdf4be, // WORLD 3
    0xdf4ca, 0xdf4d6, 0xdf4e2, 0xdf4ee, 0xdf4fa, // WORLD 4
    0xdf506, 0xdf512, 0xdf51e, 0xdf52a, 0xdf536, 0xdf542, // WORLD 5
    0xdf54e, 0xdf55a, 0xdf566, 0xdf572, 0xdf57e, 0xdf58a, 0xdf596, // WORLD 6
    0xdf5f6, 0xdf602, 0xdf60e, 0xdf61a, 0xdf626, 0xdf632, 0xdf63e, 0xdf64a // WORLD 7
]

hard_stages = [
    0xdf3e7, 0xdf3f3, 0xdf3ff, 0xdf40b, 0xdf417, // WORLD 1
    0xdf423, 0xdf42f, 0xdf43b, 0xdf447, 0xdf453, 0xdf45f, 0xdf46b, // WORLD 2
    0xdf477, 0xdf483, 0xdf48f, 0xdf49b, 0xdf4a7, 0xdf4b3, 0xdf4bf, // WORLD 3
    0xdf4cb, 0xdf4d7, 0xdf4e3, 0xdf4ef, 0xdf4fb, // WORLD 4
    0xdf507, 0xdf513, 0xdf51f, 0xdf52b, 0xdf537, 0xdf543, // WORLD 5
    0xdf54f, 0xdf55b, 0xdf567, 0xdf573, 0xdf57f, 0xdf58b, 0xdf597, // WORLD 6
    0xdf5f7, 0xdf603, 0xdf60f, 0xdf61b, 0xdf627, 0xdf633, 0xdf63f, 0xdf64b // WORLD 7
]

danger_stages = [
    0xdf3e8, 0xdf3f4, 0xdf400, 0xdf40c, 0xdf418, // WORLD 1
    0xdf424, 0xdf430, 0xdf43c, 0xdf448, 0xdf454, 0xdf460, 0xdf46c, // WORLD 2
    0xdf478, 0xdf484, 0xdf490, 0xdf49c, 0xdf4a8, 0xdf4b4, 0xdf4c0, // WORLD 3
    0xdf4cc, 0xdf4d8, 0xdf4e4, 0xdf4f0, 0xdf4fc, // WORLD 4
    0xdf508, 0xdf514, 0xdf520, 0xdf52c, 0xdf538, 0xdf544, // WORLD 5
    0xdf550, 0xdf55c, 0xdf568, 0xdf574, 0xdf580, 0xdf58c, 0xdf598, // WORLD 6
    0xdf5f8, 0xdf604, 0xdf610, 0xdf61c, 0xdf628, 0xdf634, 0xdf640, 0xdf64c // WORLD 7
]

climax_stages = [
    0xdf3e9, 0xdf3f5, 0xdf401, 0xdf40d, 0xdf419, // WORLD 1
    0xdf425, 0xdf431, 0xdf43d, 0xdf449, 0xdf455, 0xdf461, 0xdf46d, // WORLD 2
    0xdf479, 0xdf485, 0xdf491, 0xdf49d, 0xdf4a9, 0xdf4b5, 0xdf4c1, // WORLD 3
    0xdf4cd, 0xdf4d9, 0xdf4e5, 0xdf4f1, 0xdf4fd, // WORLD 4
    0xdf509, 0xdf515, 0xdf521, 0xdf52d, 0xdf539, 0xdf545, // WORLD 5
    0xdf551, 0xdf55d, 0xdf569, 0xdf575, 0xdf581, 0xdf58d, 0xdf599, // WORLD 6
    0xdf5f9, 0xdf605, 0xdf611, 0xdf61d, 0xdf629, 0xdf635, 0xdf641, 0xdf64d // WORLD 7
]

// Items

decade_item_bitfield = 0x0DF10C
diend_item_bitfield = 0x0DF300

rider_items = [
    0x0DEF2C, // Ichigo
    0x0DEF40, // Nigo
    0x0DEF54, // V3
    0x0DEF68, // Riderman
    0x0DEF7C, // X
    0x0DEF90, // Amazon
    0x0DEFA4, // Stronger
    0x0DEFB8, // Skyrider
    0x0DEFCC, // Super-1
    0x0DEFE0, // ZX
    0x0DEFF4, // Black
    0x0DF008, // Black RX
    0x0DF01C, // Shin
    0x0DF030, // ZO
    0x0DF044, // J
    0x0DF058, // Kuuga
    0x0DF06C, // Agito
    0x0DF080, // Ryuki
    0x0DF094, // Faiz
    0x0DF0A8, // Blade
    0x0DF0BC, // Hibiki
    0x0DF0D0, // Kabuto
    0x0DF0E4, // Den-O
    0x0DF0F8, // Kiva
    // 0x0DF10C — Decade bitfield (не item)
    0x0DF120, // W
    0x0DF134, // OOO
    0x0DF148, // Birth
    0x0DF15C, // Fourze
    0x0DF184, // G3-X
    0x0DF198, // Gills
    0x0DF1AC, // Knight
    0x0DF1C0, // Zolda
    0x0DF1D4, // Ouja
    0x0DF1E8, // Odin
    0x0DF1FC, // Kaixa
    0x0DF210, // Garren
    0x0DF224, // Chalice
    0x0DF24C, // Ibuki
    0x0DF260, // Todoroki
    0x0DF274, // Zanki
    0x0DF288, // Gatack
    0x0DF29C, // Kick Hopper
    0x0DF2B0, // Punch Hopper
    0x0DF2C4, // Zeronos
    0x0DF2D8, // New Den-O
    0x0DF2EC, // Ixa
    // 0x0DF300 — Diend bitfield
    0x0DF314, // Kivala
    0x0DF328, // Accel
    0x0DF33C, // Skull
    0x0DF350, // Eternal
    0x0DF364, // Birth Prototype
    0x0DF378  // Meteor
]

endurance_training = [
    0xdef38, 0xdef4c, 0xdef60, 0xdef74, 0xdef88, 0xdef9c, 0xdefb0, 0xdefc4, 0xdefd8, 0xdefec, 0xdf000, 
    0xdf014, 0xdf028, 0xdf03c, 0xdf050, 0xdf064, 0xdf078, 0xdf08c, 0xdf0a0, 0xdf0b4, 0xdf0c8, 0xdf0dc, 
    0xdf0f0, 0xdf104, 0xdf118, 0xdf12c, 0xdf140, 0xdf154, 0xdf168, 0xdf17c, 0xdf190, 0xdf1a4, 0xdf1b8, 
    0xdf1cc, 0xdf1e0, 0xdf1f4, 0xdf208, 0xdf21c, 0xdf230, 0xdf244, 0xdf258, 0xdf26c, 0xdf280, 0xdf294, 
    0xdf2a8, 0xdf2bc, 0xdf2d0, 0xdf2e4, 0xdf2f8, 0xdf30c, 0xdf320, 0xdf334, 0xdf348, 0xdf35c, 0xdf370, 0xdf384
]

// FUNCTIONS

function IsGameState(state) => game_state == state

function IsStageState(state) => byte(stage_state) == state

function DeltaComparison(mem, value) => prev(byte(mem)) == value

function IsStageCleared(addr)
{
    return (
        (DeltaComparison(addr, 0) && byte(addr) == 1) ||
        (DeltaComparison(addr + 1, 0) && byte(addr + 1) == 1) ||
        (DeltaComparison(addr + 2, 0) && byte(addr + 2) == 1) ||
        (DeltaComparison(addr + 3, 0) && byte(addr + 3) == 1) ||
        (DeltaComparison(addr + 4, 0) && byte(addr + 4) == 1)
    )
}

function HealthPointer() => tbyte(0x2CE870)

function Player1Health() => byte(HealthPointer() + 0x000180)

function PlayerLevelAddress(player) {
    is_in_stage = IsGameState(in_stage)
    if(player == 1) {
        if(is_in_stage) 
            return 0x2C995C
            else return 0x231110
    }
    else
        if(is_in_stage)
            return 0x2c9974
            else return 0x231144
}

function PlayerLevel(player) => bcd(byte(PlayerLevelAddress(player)))

function Player1Character() => byte(0xDF9A4)

function Player2Character() => byte(0xDF9A8)

// Count bytes set to 1 in range
function BytesInRangeCount(from, to)
{
    count = 0
    for address in range(from, to + 1) {
        count = count + byte(address)
    }
    return count
}

function UnlockedCharacters() => BytesInRangeCount(0xdedc0, 0xdedf8)

function DifficultiesBeatenInStage(easyDifficultyAddress) => BytesInRangeCount(easyDifficultyAddress, easyDifficultyAddress + 3)

function StageBeatenOnce(easyDifficultyAddress) => DifficultiesBeatenInStage(easyDifficultyAddress) > 0

function World7Completed()
{
    return StageBeatenOnce(World7_1) &&
           StageBeatenOnce(World7_2) &&
           StageBeatenOnce(World7_3) &&
           StageBeatenOnce(World7_4) &&
           StageBeatenOnce(World7_5) &&
           StageBeatenOnce(World7_6) &&
           StageBeatenOnce(World7_7) &&
           StageBeatenOnce(World7_8)
}

function MissionsCompletedCount()
{
    count = 0
    for address in missions
        count = count + byte(address)
    return count
}

function EasyStagesCompletedCount()
{
    count = 0
    for address in easy_stages
        count = count + byte(address)
    return count
}

function MediumStagesCompletedCount()
{
    count = 0
    for address in medium_stages
        count = count + byte(address)
    return count
}

function HardStagesCompletedCount()
{
    count = 0
    for address in hard_stages
        count = count + byte(address)
    return count
}

function DangerStagesCompletedCount()
{
    count = 0
    for address in danger_stages
        count = count + byte(address)
    return count
}

function ClimaxStagesCompletedCount()
{
    count = 0
    for address in climax_stages
        count = count + byte(address)
    return count
}

function RiderItemsBought() 
{
    count = bitcount(decade_item_bitfield) + bitcount(diend_item_bitfield)
    for address in rider_items
        count = count + byte(address)
    return count
}

function training_less_than(points, value)
{
    return any_of(points, p => word(p) > value)
}

function training_exceeds(points, value)
{
    return any_of(points, p => word(p) >= value)
}

function UltimateGauge()
{
    return byte(0x2c9969)
}

function GetCharacterData(character_name, data) 
{
    character_data = CharacterData[character_name]
    return character_data[data]
}

function IsPlayingAs(player, character_name)
{
    character_mem = GetCharacterData(character_name, "Mem")
    if(player == "Player1") {
        character = Player1Character()
    } else {
        character = Player2Character()
    }
    return character == character_mem
}

function IsUsingUltimateAs(player, character_name)
{
    ultimate_used = GetCharacterData(character_name, "Ultimate")
    return IsPlayingAs(player, character_name) && word(ultimate) == ultimate_used
}

function UsingDoubleUltimateAs(player_character, assist_character) 
{    
    start = once(
        IsGameState(in_stage) &&
        UltimateGauge() >= ultimate_gauge_max
    )

    cancel = never(
        !IsGameState(in_stage) ||
        !IsPlayingAs("Player1", player_character) ||
        !IsPlayingAs("Player2", assist_character)
    )
    
    goal = prev(!IsUsingUltimateAs("Player2", assist_character)) && 
    IsUsingUltimateAs("Player2", assist_character)
    
    return start && cancel && goal
}

function BuildCharactersLookup()
{
    lookup = {}
    for character_name in CharacterData
    {
        lookup[CharacterData[character_name]["Mem"]] = character_name
    }
    return lookup
}

// LOOKUPS

CharacterData = {
    "Wizard":             { "Ultimate": 0x0000, "Mem": 0x38 },

    "Ichigo":             { "Ultimate": 0x656c, "Mem": 0x00, "Item": 0x0DEF2C },
    "Nigo":               { "Ultimate": 0x65d8, "Mem": 0x01, "Item": 0x0DEF40 },
    "V3":                 { "Ultimate": 0x6638, "Mem": 0x02, "Item": 0x0DEF54 },
    "Riderman":           { "Ultimate": 0x6698, "Mem": 0x03, "Item": 0x0DEF68 },
    "X":                  { "Ultimate": 0x6730, "Mem": 0x04, "Item": 0x0DEF7C },
    "Amazon":             { "Ultimate": 0x67ac, "Mem": 0x05, "Item": 0x0DEF90 },
    "Stronger":           { "Ultimate": 0x6850, "Mem": 0x06, "Item": 0x0DEFA4 },
    "Skyrider":           { "Ultimate": 0x68b8, "Mem": 0x07, "Item": 0x0DEFB8 },
    "Super-1":            { "Ultimate": 0x693c, "Mem": 0x08, "Item": 0x0DEFCC },
    "ZX":                 { "Ultimate": 0x6998, "Mem": 0x09, "Item": 0x0DEFE0 },
    "Black":              { "Ultimate": 0x6a40, "Mem": 0x0A, "Item": 0x0DEFF4 },
    "Black RX":           { "Ultimate": 0x6ae0, "Mem": 0x0B, "Item": 0x0DF008 },
    "Shin":               { "Ultimate": 0x6b14, "Mem": 0x0C, "Item": 0x0DF01C },
    "ZO":                 { "Ultimate": 0x6b68, "Mem": 0x0D, "Item": 0x0DF030 },
    "J":                  { "Ultimate": 0x6bec, "Mem": 0x0E, "Item": 0x0DF044 },
    "Kuuga":              { "Ultimate": 0x6c34, "Mem": 0x0F, "Item": 0x0DF058 },
    "Agito":              { "Ultimate": 0x6cac, "Mem": 0x10, "Item": 0x0DF06C },
    "Ryuki":              { "Ultimate": 0x6d84, "Mem": 0x11, "Item": 0x0DF080 },
    "Faiz":               { "Ultimate": 0x6ee4, "Mem": 0x12, "Item": 0x0DF094 },
    "Blade":              { "Ultimate": 0x6fd8, "Mem": 0x13, "Item": 0x0DF0A8 },
    "Hibiki":             { "Ultimate": 0x70a4, "Mem": 0x14, "Item": 0x0DF0BC },
    "Kabuto":             { "Ultimate": 0x71bc, "Mem": 0x15, "Item": 0x0DF0D0 },
    "Den-O":              { "Ultimate": 0x72a8, "Mem": 0x16, "Item": 0x0DF0E4 },
    "Kiva":               { "Ultimate": 0x73cc, "Mem": 0x17, "Item": 0x0DF0F8 },
    "Decade":             { "Ultimate": 0x7500, "Mem": 0x18 },
    "W":                  { "Ultimate": 0x7668, "Mem": 0x19, "Item": 0x0DF120 },
    "OOO":                { "Ultimate": 0x7864, "Mem": 0x1A, "Item": 0x0DF134 },
    "Birth":              { "Ultimate": 0x798c, "Mem": 0x1B, "Item": 0x0DF148 },
    "Fourze":             { "Ultimate": 0x7b50, "Mem": 0x1C, "Item": 0x0DF15C },
    "Shadowmoon":         { "Ultimate": 0x7b94, "Mem": 0x1D },
    "G3-X":               { "Ultimate": 0x7c30, "Mem": 0x1E, "Item": 0x0DF184 },
    "Gills":              { "Ultimate": 0x7c74, "Mem": 0x1F, "Item": 0x0DF198 },
    "Knight":             { "Ultimate": 0x7d20, "Mem": 0x20, "Item": 0x0DF1AC },
    "Zolda":              { "Ultimate": 0x7db0, "Mem": 0x21, "Item": 0x0DF1C0 },
    "Ouja":               { "Ultimate": 0x7e08, "Mem": 0x22, "Item": 0x0DF1D4 },
    "Odin":               { "Ultimate": 0x7e68, "Mem": 0x23, "Item": 0x0DF1E8 },
    "Kaixa":              { "Ultimate": 0x7efc, "Mem": 0x24, "Item": 0x0DF1FC },
    "Garren":             { "Ultimate": 0x7f7c, "Mem": 0x25, "Item": 0x0DF210 },
    "Chalice":            { "Ultimate": 0x8010, "Mem": 0x26, "Item": 0x0DF224 },
    "Leangle":            { "Ultimate": 0x80c0, "Mem": 0x27 },
    "Ibuki":              { "Ultimate": 0x81e0, "Mem": 0x28, "Item": 0x0DF24C },
    "Todoroki":           { "Ultimate": 0x825c, "Mem": 0x29, "Item": 0x0DF260 },
    "Zanki":              { "Ultimate": 0x82a8, "Mem": 0x2A, "Item": 0x0DF274 },
    "Gatack":             { "Ultimate": 0x832c, "Mem": 0x2B, "Item": 0x0DF288 },
    "KickHopper":         { "Ultimate": 0x83bc, "Mem": 0x2C, "Item": 0x0DF29C },
    "PunchHopper":        { "Ultimate": 0x843c, "Mem": 0x2D, "Item": 0x0DF2B0 },
    "Zeronos":            { "Ultimate": 0x84ac, "Mem": 0x2E, "Item": 0x0DF2C4 },
    "New Den-O":          { "Ultimate": 0x8518, "Mem": 0x2F, "Item": 0x0DF2D8 },
    "Ixa":                { "Ultimate": 0x8650, "Mem": 0x30, "Item": 0x0DF2EC },
    "Diend":              { "Ultimate": 0x86dc, "Mem": 0x31 },
    "Kivala":             { "Ultimate": 0x8714, "Mem": 0x32, "Item": 0x0DF314 },
    "Accel":              { "Ultimate": 0x87e4, "Mem": 0x33, "Item": 0x0DF328 },
    "Eternal":            { "Ultimate": 0x883c, "Mem": 0x34, "Item": 0x0DF350 },
    "Skull":              { "Ultimate": 0x887c, "Mem": 0x35, "Item": 0x0DF33C },
    "Birth Prototype":    { "Ultimate": 0x89ec, "Mem": 0x36, "Item": 0x0DF364 },
    "Meteor":             { "Ultimate": 0x8b30, "Mem": 0x37, "Item": 0x0DF378 }
}

Characters = BuildCharactersLookup()

//PROGRESSION

achievement(
    title = "You Have to Fight If You Want to Survive!", points = 5, type="progression",
    description = "Defeat World 1 boss on any difficulty",
    trigger = (IsStageCleared(World1_5) && IsGameState(in_stage))
)

achievement(
    title = "Will You Fall Into the Hell with Us?", points = 5, type="progression",
    description = "Defeat World 2 boss on any difficulty",
    trigger = (IsStageCleared(World2_5) && IsGameState(in_stage))
)

achievement(
    title = "Whoever Survives Will Fight Me", points = 5, type="progression",
    description = "Defeat World 3 boss on any difficulty",
    trigger = (IsStageCleared(World3_5) && IsGameState(in_stage))
)

achievement(
    title = "Now, Enjoy Your Hell!", points = 10, type="progression",
    description = "Defeat World 4 boss on any difficulty",
    trigger = (IsStageCleared(World4_5) && IsGameState(in_stage))
)

achievement(
    title = "Fight Fire with Rider", points = 10, type="progression",
    description = "Defeat World 5 boss on any difficulty",
    trigger = (IsStageCleared(World5_6) && IsGameState(in_stage))
)

achievement(
    title = "Master of Enemies", points = 25, type="win_condition",
    description = "Defeat World 6 boss on any difficulty",
    trigger = (IsStageCleared(World6_7) && IsGameState(in_stage))
)

//MEASURED

achievement(
    title = "World's Greatest Treasures", 
    description = "Buy all rider items from the shop (including all of Decade's and Diend's)",
    points = 10,
    trigger = 
        prev(IsGameState(title_screen)) && 
        IsGameState(title_screen) &&
        prev(RiderItemsBought()) == RiderItemsTotal - 1 &&
        measured(RiderItemsBought() == RiderItemsTotal)
)

achievement(
    title = "40 Years of Rider!", 
    description = "Unlock all characters, including password and hidden",
    points = 10,
    trigger = 
        prev(UnlockedCharacters()) == CharactersTotal - 1 &&
        measured(UnlockedCharacters() == CharactersTotal)
)

achievement(
    title = "I'm On It", 
    description = "Complete all star missions",
    points = 50,
    trigger = 
        IsStageState(not_in_stage) &&
        prev(MissionsCompletedCount()) == MissionsCount - 1 &&
        measured(MissionsCompletedCount() == MissionsCount)
)

achievement(
    title = "I... Have Arrived!", points = 10,
    description = "Complete all stages on Easy difficulty at least once",
    trigger = 
        IsStageState(not_in_stage) &&
        prev(EasyStagesCompletedCount()) == StagesCount - 1 &&
        measured(EasyStagesCompletedCount() == StagesCount)
)

achievement(
    title = "Let's Go, Go, Go!", points = 10,
    description = "Complete all stages on Medium difficulty at least once",
    trigger = 
        IsStageState(not_in_stage) &&
        prev(MediumStagesCompletedCount()) == StagesCount - 1 &&
        measured(MediumStagesCompletedCount() == StagesCount)
)

achievement(
    title = "My Special Attack, Special Edition!", points = 10,
    description = "Complete all stages on Hard difficulty at least once",
    trigger = 
        IsStageState(not_in_stage) &&
        prev(HardStagesCompletedCount()) == StagesCount - 1 &&
        measured(HardStagesCompletedCount() == StagesCount)
)

achievement(
    title = "From Start to Finish...", points = 25,
    description = "Complete all stages on Danger difficulty at least once",
    trigger = 
        IsStageState(not_in_stage) &&
        prev(DangerStagesCompletedCount()) == StagesCount - 1 &&
        measured(DangerStagesCompletedCount() == StagesCount)
)

achievement(
    title = "...I'm Always at a Climax!", points = 50,
    description = "Complete all stages on Climax difficulty at least once",
    trigger = 
        IsStageState(not_in_stage) &&
        prev(ClimaxStagesCompletedCount()) == StagesCount - 1 &&
        measured(ClimaxStagesCompletedCount() == StagesCount)
)

//CHALLENGE

achievement(
    title = "Temple Run", points = 5,
    description = "Complete stage 2-2 on any difficulty without taking damage",
    trigger = (Player1Health() < prev(Player1Health()))
)

achievement(
    title = "Another Rider", points = 10,
    description = "Complete every stage in Another World once on any difficulty",
    trigger =
        IsStageState(not_in_stage) && 
        prev(!World7Completed()) && 
        World7Completed()
)

achievement(
    title = "My Strength Has Made You Cry", points = 10,
    description = "Have Player character's Endurance at 300 at stage selection",
    trigger = 
        IsGameState(stage_selection) &&
        prev(word(player1_endurance_stage_selection)) < 300 &&
        word(player1_endurance_stage_selection) >= 300
)

// ULTIMATES

// FUN: batch Double Ultimate/Skill achievements
ultimate_achievements = [
    { "title": "Let's Go! Rider Kick",            "desc": "Use Double Ultimate as Ichigo with Nigo as your partner",                  "p1": "Ichigo",        "p2": "Nigo" },
    { "title": "Second Generation",               "desc": "Use Double Ultimate as V3 with Riderman as your partner",                  "p1": "V3",            "p2": "Riderman" },
    { "title": "Wild Force",                      "desc": "Use Double Ultimate as Amazon with X as your partner",                     "p1": "Amazon",        "p2": "X" },
    { "title": "Lightning to Heaven",             "desc": "Use Double Ultimate as Stronger with Skyrider as your partner",            "p1": "Stronger",      "p2": "Skyrider" },
    { "title": "Dragon Road",                     "desc": "Use Double Ultimate as Super-1 with ZX as your partner",                   "p1": "Super-1",       "p2": "ZX" },
    { "title": "Black Sun",                       "desc": "Use Double Ultimate as Black with Black RX as your partner",               "p1": "Black",         "p2": "Black RX" },
    { "title": "Powerhouses of the Cell",         "desc": "Use Double Ultimate as ZO with J as your partner",                         "p1": "ZO",            "p2": "J" },
    { "title": "Unidentified Lifeforms",          "desc": "Use Double Ultimate as Kuuga with Agito as your partner",                  "p1": "Kuuga",         "p2": "Agito" },
    { "title": "Awaken the Soul",                 "desc": "Use Double Ultimate as Gills with G3-X as your partner",                   "p1": "Gills",         "p2": "G3-X" },
    { "title": "Alive a Life",                    "desc": "Use Double Ultimate as Ryuki with Knight as your partner",                 "p1": "Ryuki",         "p2": "Knight" },
    { "title": "End Justifaiz the Means",         "desc": "Use Double Ultimate as Faiz with Kaixa as your partner",                   "p1": "Faiz",          "p2": "Kaixa" },
    { "title": "Blade Brave",                     "desc": "Use Double Ultimate as Blade with Garren as your partner",                 "p1": "Blade",         "p2": "Garren" },
    { "title": "Radiance",                        "desc": "Use Double Ultimate as Hibiki with Ibuki as your partner",                 "p1": "Hibiki",        "p2": "Ibuki" },
    { "title": "Student and Master",              "desc": "Use Double Ultimate as Todoroki with Zanki as your partner",               "p1": "Todoroki",      "p2": "Zanki" },
    { "title": "Next Level",                      "desc": "Use Double Ultimate as Kabuto with Gatack as your partner",                "p1": "Kabuto",        "p2": "Gatack" },
    { "title": "Hell Brothers",                   "desc": "Use Double Ultimate as KickHopper with PunchHopper as your partner",       "p1": "KickHopper",    "p2": "PunchHopper" },
    { "title": "Climax Jump",                     "desc": "Use Double Ultimate as Den-O with Zeronos as your partner",                "p1": "Den-O",         "p2": "Zeronos" },
    { "title": "Break the Chain",                 "desc": "Use Double Ultimate as Kiva with Ixa as your partner",                     "p1": "Kiva",          "p2": "Ixa" },
    { "title": "Journey Through the Decade",      "desc": "Use Double Ultimate as Decade with Diend as your partner",                 "p1": "Decade",        "p2": "Diend" },
    { "title": "Fuuto Pi",                        "desc": "Use Double Ultimate as W with Accel as your partner",                      "p1": "W",             "p2": "Accel" },
    { "title": "Count the Switches! 1-2-4!",      "desc": "Use Double Ultimate as OOO with Fourze as your partner",                   "p1": "OOO",           "p2": "Fourze" },
    { "title": "Happy Birthday!",                 "desc": "Use Double Ultimate as Birth with Birth Prototype as your partner",        "p1": "Birth",         "p2": "Birth Prototype" },
    { "title": "Cosmic Energy",                   "desc": "Use Double Ultimate as Fourze with Meteor as your partner",                "p1": "Fourze",        "p2": "Meteor" }
]

for ua in ultimate_achievements
{
    achievement(
        title = ua["title"],
        description = ua["desc"],
        points = 2,
        trigger = UsingDoubleUltimateAs(ua["p1"], ua["p2"])
    )
}

// RICH PRESENCE

rich_presence_conditional_display(IsGameState(starting), "Starting the game")
rich_presence_conditional_display(IsGameState(title_screen), "Title Screen")
rich_presence_conditional_display(IsGameState(character_selection), "Character Selection")
rich_presence_display("{0} and {1} are playing the game",
    rich_presence_lookup("Player 1 Character", Player1Character(), Characters),
    rich_presence_lookup("Player 2 Character", Player2Character(), Characters)
)
