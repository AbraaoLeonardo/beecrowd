coelho = 0
rato = 0
sapo = 0
loop = int(input())

for i in range(loop):
    cobaia = input().split()
    match(cobaia[1]):
        case 'C':
            coelho += int(cobaia[0])
        case 'R':
            rato += int(cobaia[0])
        case 'S':
            sapo += int(cobaia[0])


total = coelho + rato + sapo
print(f"Total: {total} cobaias")
print(f"Total de coelhos: {coelho}")
print(f"Total de ratos: {rato}")
print(f"Total de sapos: {sapo}")
print(f'Percentual de coelhos: {coelho*100/total:.2f} %')
print(f'Percentual de ratos: {rato*100/total:.2f} %')
print(f'Percentual de sapos: {sapo*100/total:.2f} %')