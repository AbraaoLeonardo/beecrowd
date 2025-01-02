import sys

salario = float(input())

taxas = 0

if salario <= 2000:
    print("Isento")
    sys.exit(0)

if salario > 4500:
    taxas += (salario - 4500) * 0.28
    salario = 4500

if salario <= 4500 and salario >= 3000.01:
    taxas += (salario - 3000) * 0.18
    salario = 3000

if salario <= 3000 and salario >= 2000.01:
    taxas += (salario - 2000) * 0.08

print(f"R$ {taxas:.2f}")