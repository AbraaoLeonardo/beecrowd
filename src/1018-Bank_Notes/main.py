notes = int(input())
banknotes = [100, 50, 20, 10, 5, 2, 1]

print(notes)

for note in banknotes:
    count = notes // note
    print(f"{count} nota(s) de R$ {note},00")
    notes %= note
