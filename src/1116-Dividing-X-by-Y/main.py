loop = int(input())

for i in range(loop):
    x, y = map(int, input().split())
    if y == 0:
        print("divisao impossivel")
    
    if x == 0 and y != 0:
        print(0.0)
    
    if x!=0 and y!=0:
        print(round(x/y,1))