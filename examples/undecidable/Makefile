REC2LUA=recursed-xls2lua
SVGTILER = svgtiler -j 4 -p -t

LEVELDIR=.
LEVELSPEC=undecidable.xlsx

all: undecidable level

undecidable: undecidable-expanded.xlsx
	$(SVGTILER) ../../svgtiler/recursed.coffee undecidable-expanded.xlsx

undecidable-expanded.xlsx: $(LEVELSPEC)
	$(REC2LUA) -e $(LEVELSPEC)

fetch:
	curl -L "https://docs.google.com/spreadsheets/d/1ASqSR9EQF2L-6L6IQ_HYus3htGyc0kWByDrfVtEJnjM/export?format=xlsx" -o "$(LEVELSPEC)"

level: $(LEVELSPEC)
	$(REC2LUA) -o $(LEVELDIR) $(LEVELSPEC)
