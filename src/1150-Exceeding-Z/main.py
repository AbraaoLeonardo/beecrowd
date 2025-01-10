start_valuer = int(input())
max_valuer = int(input())

while max_valuer < start_valuer:
    max_valuer = int(input())

soma = start_valuer
CONTAGEM=1

while soma <= max_valuer:
    start_valuer+=1
    soma+=start_valuer
    CONTAGEM+=1

print(CONTAGEM)
