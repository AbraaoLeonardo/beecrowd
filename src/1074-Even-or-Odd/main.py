loop = int(input())

for i in range(loop):
    number = int(input())
    neg = 'NEGATIVE'
    odd = 'ODD'
    if number > 0:
        neg = 'POSITIVE'
    if number % 2 == 0:
        odd = 'EVEN'
    if number != 0:
        print(odd, neg)
    if number == 0:
        print("NULL")
