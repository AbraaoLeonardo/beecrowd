lista = list(map(int,input().split()))
a = lista[0]
b = lista[-1]

soma = 0

for i in range(0,b):
    soma += a+i
print(soma)