# recursed-xls2lua: Custom level design for Recursed via spreadsheets

This tool lets you design custom levels for the video game
**[Recursed](http://store.steampowered.com/app/497780/Recursed/)**
using a simple spreadsheet input format, as an alternative to
(and converting to) the
[custom level Lua format](http://steamcommunity.com/sharedfiles/filedetails/?id=800043882).

## Input Format

The input file can be any spreadsheet format supported by
[the xlsx package](https://www.npmjs.com/package/xlsx), for example,
`.xlsx` exported from Google Sheets.

Each spreadsheet file corresponds to a level, and each sheet within
the file corresponds to a room.  (The room name is the sheet name.)
Each sheet should be 20 columns wide and 15 rows high.

Each cell in a sheet can be one of the following:

Full name | Aliases       | Meaning             | Height
--------- | -------       | -------             | ------
solid     | s             | impassable wall     | 1
ledge     | -             | top edge is a wall  | 1
water     | w             | water tile          | 1
acid      | a             | acid tile           | 1
buoy      | bu            | floating block/wall | 1
glitch    | gl            | glitch tile/wall    | 1
ledgewet  | lw            | glitch tile/wall    | 1
player    | p             | start location      | 2
box       | b             | movable block       | 1
key       | k             | grabbable key       | 1
lock      | l, d, door    | locked door         | 3
chest     | c             | room specified by colon | 1
yield     | y             | green glow creating jar | 1
crystal   | cr, goal      | goal of the level   | 1
diamond   | d             | goal of a paradox   | 1
record    | r             | narration ring, path specified by colon | 1
fan       | f             | paradox fan         | 1
bird      | b             | restart bird spawn  | 1
generic   | g, o, oobleck | oobleck (copy)      | 1

## Usage

```bash
npm install -g recursed-xls2lua
recursed-xls2lua filename.xlsx
## generates filename.lua
```

## TODO

* Globals
