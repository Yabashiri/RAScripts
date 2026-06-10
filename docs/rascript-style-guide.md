# RAScript Style Guide

The goal is to keep `scripts/PS2/Kamen Rider Seigi no Keifu.rascript` readable after it grows beyond simple one-off achievements.

## Baseline File Layout

Use this order for a full game script:

```rascript
// Kamen Rider: Seigi no Keifu
// #ID = 31667
// #MinimumVersion = 1.3

// Shared constants and tiny helpers

// Regions / address helpers

// Memory: game state

// Memory: player / combat

// Memory: stages / chapters / progression

// Data tables

// State helpers

// Trigger helpers

// LOOKUPS

// ACHIEVEMENTS START
// PROGRESSION
// MEASURED / COLLECTION
// CHALLENGE
// RIDER-SPECIFIC
// ACHIEVEMENTS END

// LEADERBOARDS START
// LEADERBOARDS END

// RICH PRESENCE START
// RICH PRESENCE END
```

Keep address discovery notes near the memory block they explain. Put long research notes in docs, not in the script.

## Naming Rules

Use different casing for different kinds of things.

| Kind | Style | Examples |
| --- | --- | --- |
| Fixed constants, enum values, totals | `UPPER_SNAKE` | `NULL`, `REGION_JP`, `STATE_IN_STAGE`, `STAGES_TOTAL` |
| Raw addresses | `ADDR_UPPER_SNAKE` or `a_lowerCamel` | `ADDR_GAME_STATE`, `a_playerPointer` |
| Struct offsets | `OFFSET_UPPER_SNAKE` or `o_lowerCamel` | `OFFSET_PLAYER_HP`, `o_trickPointer` |
| Runtime memory expressions | `lowerCamel` | `gameState`, `playerHealth`, `currentChapter` |
| Data tables | `UpperCamel` for large domain maps, `lowerCamel` for lists | `CharacterData`, `StageData`, `stageOrder` |
| Functions | `PascalCase` | `IsGameState`, `CurrentStage`, `StageCleared` |
| Trigger builders | `PascalCase` plus `Trigger` when useful | `NoDamageTrigger`, `ChapterClearTrigger` |
| Rich Presence lookup tables | `UpperCamel` plus `Lookup` when not obvious | `StageNameLookup`, `DifficultyLookup` |

For this new PS2 script, prefer a clearer split than the NDS script:

```rascript
ADDR_GAME_STATE = 0x00000000
gameState = byte(ADDR_GAME_STATE)

STATE_TITLE = 0x00
STATE_IN_STAGE = 0x01

function IsGameState(state) => gameState == state
```

This avoids `GAME_STATE = byte(...)` looking the same as `STATE_IN_STAGE = 0x01`.

Use suffixes consistently:

- `Addr`: raw address value.
- `Ptr`: value read from a pointer address.
- `Offset`: offset into a struct or pointer chain.
- `Id`: game-facing identifier.
- `Index`: zero-based script/list index.
- `Count`: current count.
- `Total`: expected final total.
- `Lookup`: Rich Presence or display mapping.
- `Data`: nested domain table.

Use predicate names that say what the condition means:

```rascript
function IsInStage() => IsGameState(STATE_IN_STAGE)
function HasControl() => IsInStage() && !IsLoading() && !IsPaused()
function ChapterCleared(chapterId) => byte(ChapterFlagAddr(chapterId)) == True
function ChapterClearTrigger(chapterId) => prev(ChapterCleared(chapterId)) == False && ChapterCleared(chapterId)
```

Avoid names that describe implementation only, such as `Check1`, `value2`, `tempFlag`, unless the variable is very local and short-lived.

## Address And Memory Conventions

Prefer a two-layer memory map:

```rascript
ADDR_PLAYER_BASE = 0x00000000
OFFSET_PLAYER_HP = 0x120

playerPtr = dword(ADDR_PLAYER_BASE)
playerHealth = word(playerPtr + OFFSET_PLAYER_HP)
```

For pointer chains, use the PS2 example pattern:

```rascript
addr = (v) => v

function Ptr(base, offsets, accessor=dword)
{
    val = base
    for i in range(0, length(offsets) - 1)
    {
        address = val + offsets[i]
        if i == length(offsets) - 1
            val = accessor(address)
        else
            val = dword(address)
    }
    return val
}
```

Only add a generic `Ptr` helper after a real pointer chain appears. For one fixed pointer, a small named function is clearer.

```rascript
function PlayerPointer() => dword(ADDR_PLAYER_POINTER)
function PlayerHealth() => word(PlayerPointer() + OFFSET_PLAYER_HP)
```

Guard pointer-based triggers:

```rascript
function IsStable(pointer) => pointer != NULL && pointer == prev(pointer)
```

Then use it in cancel conditions, especially for no-damage or combat achievements.

## Region Handling

If Seigi no Keifu stays Japan-only, do not overbuild region support. Start with direct addresses.

If another hash or region is added, use one of these patterns:

```rascript
REGION_JP = 0
REGION_US = 1
regionByte = byte(ADDR_REGION_BYTE)

function IsRegion(region) => regionByte == region
```

For many region-specific addresses, prefer dictionaries:

```rascript
gameState = {
    REGION_JP: byte(0x00000000),
    REGION_US: byte(0x00000000),
}

function GameState() => gameState[regionByte]
```

For two regions where addresses are consistently offset, use `GetRealAddress(palAddress, jpAddress)` like the Raw Danger example. Do not mix both patterns in the same block unless there is a clear reason.

## Trigger Patterns

Use `prev` for exact transitions:

```rascript
function FlagSetTrigger(flag) => prev(byte(flag)) == False && byte(flag) == True
```

Use `prior` for state transitions where a short history check is more reliable than one previous frame:

```rascript
prior(IsGameState(STATE_STAGE_SELECT)) && IsGameState(STATE_SHOP)
```

Use `once`, `trigger_when`, and `never` for challenge windows:

```rascript
function NoDamageStageTrigger(stageId)
{
    start = once(
        AreAchievementsEnabled() &&
        IsStage(stageId) &&
        HasControl()
    )

    goal = trigger_when(StageClearTrigger(stageId))

    cancel = never(
        !IsStage(stageId) ||
        !HasControl() ||
        PlayerHealth() < prev(PlayerHealth())
    )

    return start && goal && cancel
}
```

Use `measured` for cumulative achievements and keep the edge check outside it:

```rascript
trigger =
    AreAchievementsEnabled() &&
    prev(CollectedItemsCount()) < ITEMS_TOTAL &&
    measured(CollectedItemsCount() == ITEMS_TOTAL)
```

Use `any_of` for "any character/stage/item" checks:

```rascript
function AnyRiderLevelCrosses(level)
{
    return any_of(range(0, RIDERS_TOTAL - 1), i =>
        CurrentRider() == i &&
        prev(RiderLevel(i)) < level &&
        measured(RiderLevel(i) >= level, when=CurrentRider() == i)
    )
}
```

Use explicit cancel guards for save-load, menus, loading, multiplayer/easy-mode restrictions, and unstable pointers. A good default gate is:

```rascript
function AreAchievementsEnabled() =>
    IsSupportedMode() &&
    !IsLoading() &&
    !IsDemoOrAttract()
```

## Data-Driven Generation

Use tables when a pattern repeats three or more times.

Good candidates:

- Stage clear achievements.
- Character/rider achievements.
- Collectible groups.
- Rich Presence stage names.
- Repeated "use ability as character X" achievements.

Example:

```rascript
ProgressionAchievements = [
    { "title": "First Henshin", "desc": "Clear Chapter 1", "points": 5, "chapter": 1 },
    { "title": "Justice Lineage", "desc": "Clear Chapter 2", "points": 5, "chapter": 2 },
]

for ach in ProgressionAchievements
{
    achievement(
        title = ach["title"],
        description = ach["desc"],
        points = ach["points"],
        type = "progression",
        trigger = ChapterClearTrigger(ach["chapter"])
    )
}
```

Do not use a wrapper like `myAchievement` only to shorten `achievement(...)`. A wrapper is worth it only if it enforces IDs, shared flags, common badge logic, or a repeated trigger shape.

## Achievement Section Conventions

Group achievements by player-facing concept, not by implementation detail.

Recommended order:

1. `PROGRESSION`: required story/chapter clears and win condition.
2. `MEASURED / COLLECTION`: totals, unlocks, gallery/items, difficulty clears.
3. `CHALLENGE`: no damage, speed, restrictions, optional tasks.
4. `RIDER-SPECIFIC`: character-specific or transformation-specific tasks.
5. `GENERATED`: loops over data tables, if not already grouped above.

Inside each achievement, use this property order:

```rascript
achievement(
    title = "...",
    description = "...",
    points = 5,
    type = "progression",
    trigger =
        AreAchievementsEnabled() &&
        ...
)
```

For a single-line trigger, keeping it on one line is fine. For anything with `once`, `never`, `measured`, or multiple state gates, split it across lines.

## Leaderboards

Keep leaderboards after achievements. Use named helpers for `start`, `cancel`, `submit`, and `value` when the logic is more than one expression.

```rascript
leaderboard(
    title = "Fastest Chapter 1",
    description = "Clear Chapter 1 as fast as possible",
    start = ChapterStarted(1),
    cancel = ChapterRunCanceled(1),
    submit = ChapterClearTrigger(1),
    value = ChapterTimer(),
    lower_is_better = true,
    format = "TIME"
)
```

Avoid `always_true()` submit unless the board is intentionally sampling a value once started. Most boards should submit on a specific completion edge.

## Rich Presence

Put Rich Presence last and order displays from most specific to most general:

1. Cutscenes, menus, loading, minigames.
2. In-stage gameplay.
3. Stage select / shop / gallery.
4. Title screen.
5. Fallback `rich_presence_display`.

Use lookup tables for any value shown to players:

```rascript
StageNameLookup = {
    0x0101: "Chapter 1",
    0x0102: "Chapter 2",
}

rich_presence_conditional_display(
    IsInStage(),
    "Playing {0}",
    rich_presence_lookup("StageName", CurrentStageKey(), StageNameLookup, "Unknown Stage")
)
```

Keep lookup table builders near `// LOOKUPS` if they are generated by functions.

## Comments

Use comments to capture research facts and weird game behavior:

```rascript
// Set to 1 during fade-out before the chapter flag is committed.
chapterFadeState = byte(ADDR_CHAPTER_FADE_STATE)
```

Do not comment obvious accessors:

```rascript
// Bad: Gets player health.
function PlayerHealth() => word(playerPtr + OFFSET_PLAYER_HP)
```

Prefer comments that explain why a guard exists, not just what the line says.

## Practical Starting Template

For Seigi no Keifu, start with this minimal skeleton and grow it only when addresses demand it:

```rascript
// Kamen Rider: Seigi no Keifu
// #ID = 31667
// #MinimumVersion = 1.3

NULL = 0
True = 1
False = 0

// MEMORY: game state

ADDR_GAME_STATE = 0x00000000
gameState = byte(ADDR_GAME_STATE)

STATE_TITLE = 0x00
STATE_IN_STAGE = 0x00
STATE_LOADING = 0x00

// MEMORY: stage / player

// DATA TABLES

// STATE HELPERS

function IsGameState(state) => gameState == state
function IsInStage() => IsGameState(STATE_IN_STAGE)
function IsLoading() => IsGameState(STATE_LOADING)
function AreAchievementsEnabled() => !IsLoading()

// TRIGGER HELPERS

// LOOKUPS

// ACHIEVEMENTS START

// PROGRESSION

// MEASURED / COLLECTION

// CHALLENGE

// ACHIEVEMENTS END

// LEADERBOARDS START
// LEADERBOARDS END

// RICH PRESENCE START
rich_presence_display("Playing Kamen Rider: Seigi no Keifu")
// RICH PRESENCE END
```
