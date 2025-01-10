loop = int(input())

def numero_perfeito():
    number = input()
    message = 'nao eh perfeito'
    soma = 0

    for i in range(1, int(number)):
        if int(number) % i == 0:
            soma+=i
    
    if soma == int(number):
        message = 'eh perfeito'

    print(number,message)

for _ in range(loop):
    numero_perfeito()
