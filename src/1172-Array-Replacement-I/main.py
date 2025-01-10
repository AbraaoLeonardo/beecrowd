array = []

for i in range(5):
    number = int(input())
    if number <= 0:
        number = 1
    array.append(number)
print(array)