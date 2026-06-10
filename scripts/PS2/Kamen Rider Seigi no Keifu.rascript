// Kamen Rider: Seigi no Keifu
// #ID = 31667

// MEMORY: game state

ADDR_CURRENT_LOCATION = 0x0041f08c
ADDR_CURRENT_CHAPTER = 0x0041f0a0
ADDR_CURRENT_PLAYER_CHARACTER = 0x0044badc

currentLocation = dword(ADDR_CURRENT_LOCATION)
currentChapter = dword(ADDR_CURRENT_CHAPTER)
currentPlayerCharacter = dword(ADDR_CURRENT_PLAYER_CHARACTER)

// LOOKUPS

ChapterLookup = {
    1: "Chapter 1",
    2: "Chapter 2",
    3: "Chapter 3",
    4: "Chapter 4",
    5: "Chapter 5 Part One",
    6: "Chapter 5 Part Two",
    7: "Chapter 6",
}

LocationLookup = {
    3:  "Power Plant Entrance",
    15: "Power Plant Transmission Facility",
    31: "Power Plant Transformer Room",
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

// RICH PRESENCE START

rich_presence_conditional_display(currentChapter > 0, "[{0}] {1} is in {2}",
    rich_presence_lookup("CurrentChapter", currentChapter, ChapterLookup),
    rich_presence_lookup("CurrentPlayerCharacter", currentPlayerCharacter, PlayerCharacterLookup),
    rich_presence_lookup("CurrentLocation", currentLocation, LocationLookup)
)
rich_presence_display("Playing Kamen Rider: Seigi no Keifu")

// RICH PRESENCE END
