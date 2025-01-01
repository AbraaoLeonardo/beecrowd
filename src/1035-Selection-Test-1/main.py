resultado = 'Valores nao aceitos'

a,b,c,d = map(int, input().split())

if (b > c and d > a):
    if (a+b < c+d):
        if (c > 0 and d > 0):
            if (a % 2 == 0):
                resultado = 'Valores aceitos'

print(resultado)