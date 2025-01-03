import sys
valor = 0
inicial = int(input())
final = int(input())

if inicial > final:
    inicial,final = final,inicial

if inicial == final:
    print(0)
    sys.exit(0)

for i in range(inicial +1, final):
    if i % 2 == 1:
        valor += i
    
print(valor)