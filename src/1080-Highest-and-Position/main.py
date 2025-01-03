maior = 0
position = 0
for i in range(100):
    number = int(input())
    if i == 0:
        maior = number
        position = i+1
    if maior < number:
        maior = number
        position = i+1
print(maior)
print(position)