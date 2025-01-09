X, Y = map(int, input().split())

for i in range(1, Y + 1):
    if i % X != 0:
        print(i, end=' ')
    if i % X == 0:
        print(i)
