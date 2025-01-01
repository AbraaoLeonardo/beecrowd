a,b,c = map(int, input().split())
array = [a,b,c]

sort_array = []

for i in array:
    sort_array.append(i)

sort_array.sort()

for i in sort_array:
    print(i)

print("")
for i in array:
    print(i)
