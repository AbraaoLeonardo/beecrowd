soma = 0
top = 1
botton = 1
for i in range(1,101):
    soma += (top)/botton
    top += 2
    botton *= 2

print(f"{soma:.2f}")