even = 0

for i in range(5):
    number = float(input())
    if number < 0:
        number *= -1
    if number % 2 == 0:
        even+=1
        

print(f"{even} valores pares")