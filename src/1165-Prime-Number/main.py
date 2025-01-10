loop = int(input())

def eh_primo(number:int) -> bool:
    sum = 0
    for i in range(2, number):
        if number % i == 0:
            return False
    return True

for _ in range(loop):
    number = int(input())
    print(number, end=" ")
    if eh_primo(number=number):
        print("eh primo")
    else:
        print("nao eh primo")