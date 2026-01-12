# Challange created by Iustin-Mihail Bichir
# Username: ducky-duck
# Contest: HackTheART Slobozia 2025

CFLAGS=-fno-stack-protector -no-pie -g

.phony: all build run clean sol

all: build

build: perilous-hoth

perilous-hoth: perilous-hoth.c
	$(CC) $(CFLAGS) $< -o $@

run: perilous-hoth
	@test -f flag.txt || { echo "Flag file does not exist! Download the file or contact the admin!"; exit 1; }
	./perilous-hoth

clean:
	rm -f perilous-hoth

sol: solution.py perilous-hoth
	python3 solution.py