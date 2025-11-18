// All Kamen Rider: Rider Generation 2
// #ID = 31775

True = 1
False = 0
CharactersTotal = 57
StagesCount = 45

// Game states
game_state = byte(0x000ffd2c)
starting = 0x00
in_stage = 0x01
title_screen = 0x05
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

//LOOKUPS

Characters = {
    0x00: "Ichigo",
    0x01: "Nigo",
    0x02: "V3",
    0x03: "Riderman",
    0x04: "X",
    0x05: "Amazon",
    0x06: "Stronger",
    0x07: "Skyrider",
    0x08: "Super-1",
    0x09: "ZX",
    0x0A: "Black",
    0x0B: "Black RX",
    0x0C: "Shin",
    0x0D: "ZO",
    0x0E: "J",
    0x0F: "Kuuga",
    0x10: "Agito",
    0x11: "Ryuki",
    0x12: "Faiz",
    0x13: "Blade",
    0x14: "Hibiki",
    0x15: "Kabuto",
    0x16: "Den-O",
    0x17: "Kiva",
    0x18: "Decade",
    0x19: "W (CycloneJoker)",
    0x1A: "OOO (Tatoba Combo)",
    0x1B: "Birth",
    0x1C: "Fourze",
    0x1D: "W (HeatMetal)",
    0x1E: "W (LunaTrigger)",
    0x1F: "OOO (Gatakiriba Combo)",
    0x20: "OOO (Latorartar Combo)",
    0x21: "OOO (Sagohzo Combo)",
    0x22: "OOO (Shauta Combo)",
    0x23: "OOO (Tajador Combo)",
    0x24: "Decade (Kuuga)",
    0x25: "Decade (Agito)",
    0x26: "Decade (Ryuki)",
    0x27: "Decade (Faiz)",
    0x28: "Decade (Blade)",
    0x29: "Decade (Hibiki)",
    0x2A: "Todoroki",
    0x2B: "Zanki",
    0x2C: "Decade (Kiva)",
    0x32: "Kivala",
    0x35: "Eternal",
    0x37: "Meteor",
    0x38: "Wizard"
}

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
    title = "40 Years of Rider!", 
    description = "Unlock all characters, including password and hidden",
    points = 10,
    trigger = prev(UnlockedCharacters()) == CharactersTotal - 1 &&
    measured(UnlockedCharacters() == CharactersTotal)
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

//CHALLENGE

achievement(
    title = "Another Rider", points = 10,
    description = "Complete every stage in Another World once on any difficulty",
    trigger =
        IsStageState(not_in_stage) && 
        prev(!World7Completed()) && 
        World7Completed()
)

achievement(
    title = "Temple Run", points = 5,
    description = "Complete stage 2-2 on any difficulty without taking damage",
    trigger = (Player1Health() < prev(Player1Health()))
)

//RICH PRESENCE

rich_presence_conditional_display(IsGameState(starting), "Starting the game")
rich_presence_conditional_display(IsGameState(title_screen), "Title Screen")
rich_presence_conditional_display(IsGameState(character_selection), "Character Selection")
rich_presence_display("{0} and {1} are playing the game",
    rich_presence_lookup("Player 1 Character", Player1Character(), Characters),
    rich_presence_lookup("Player 2 Character", Player2Character(), Characters)
)