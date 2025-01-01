from math import sqrt
a,b,c = map(float, input().split())

delta = b*b - 4*a*c
if a == 0 or delta < 0:
    print("Impossivel calcular")
    exit(0)

raiz = sqrt(delta)

r2 = (-b-raiz)/(2*a)
r1 = (-b+raiz)/(2*a)
print(f"R1 = {r1:.5f}\nR2 = {r2:.5f}")
exit(0)