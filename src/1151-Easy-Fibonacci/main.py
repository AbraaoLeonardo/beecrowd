fibbo = [0,1]
loop = int(input())

for i in range(2, loop):
    fibbo.append(fibbo[i-1] + fibbo[i-2])
print(" ".join(map(str, fibbo[:loop])))