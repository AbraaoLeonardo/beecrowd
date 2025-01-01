a, b = map(int, input().split())

result = 'Nao sao Multiplos'

if b < a:
    a,b = b,a

if b % a == 0:
    result = 'Sao Multiplos'

print(result)