i = 0
count = 0
number = int(input())
while i < 10000:
    if i % number == 2:
        print(i)
        count +=1
    i+=1