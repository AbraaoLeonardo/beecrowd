salario = float(input())

porcentagem = 0.04

if salario <= 400.00:
    porcentagem = 0.15
if salario <= 800.00 and salario > 400:
    porcentagem = 0.12
if salario <= 1200.00 and salario > 800.00:
    porcentagem = 0.10
if salario <= 2000.00 and salario > 1200:
    porcentagem = 0.07

reajuste = salario * porcentagem
salario_final = salario + reajuste

print(f"Novo salario: {salario_final:.2f}")
print(f"Reajuste ganho: {reajuste:.2f}")
print(f"Em percentual: {int(porcentagem * 100)} %")