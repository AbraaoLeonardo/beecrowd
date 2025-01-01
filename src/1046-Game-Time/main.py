start, end = map(int, input().split())

horas = 24

if end < start:
    horas = 24 - start + end

if end > start:
    horas = end - start

print(f"O JOGO DUROU {horas} HORA(S)")