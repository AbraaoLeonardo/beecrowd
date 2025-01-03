loop = int(input())

hit = 0

for i in range(loop):
    number = int(input())
    if number >= 10 and number <=20:
        hit += 1

print(f"{hit} in")
print(f"{loop - hit} out")