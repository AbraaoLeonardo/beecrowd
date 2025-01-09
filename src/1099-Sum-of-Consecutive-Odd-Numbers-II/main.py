loop = int(input())
for i in range(loop):
    x, y = map(int, input().split())
    soma = 0

    if x > y:
        x,y = y,x

    if x != y:
        for i in range(x+1,y):
            if i % 2 == 1:
                soma +=i

    print(soma)
