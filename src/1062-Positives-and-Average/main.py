positivos = 0
valor = 0
for i in range(6):
    number = float(input())
    if number > 0:
        positivos+=1
        valor+=number

print(f"{positivos} valores positivos")
print(f"{(valor/positivos):.1f}")