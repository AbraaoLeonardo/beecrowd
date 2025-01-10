from math import floor
def calcular_crescimento_populacional() -> None:
    cidade1, cidade2, crescimento_1, crescimento_2 = map(float, input().split())
    for i in range(1, 101):
        cidade1 *= (1+(crescimento_1/100))
        cidade2 *= (1+(crescimento_2/100))
        cidade1 = floor(cidade1)
        cidade2 = floor(cidade2)
        if cidade1 > cidade2:
            print(f"{i} anos.")
            break
    if cidade1 <= cidade2:
        print("Mais de 1 seculo.")

loop = int(input())

for _ in range(loop):
    calcular_crescimento_populacional()
