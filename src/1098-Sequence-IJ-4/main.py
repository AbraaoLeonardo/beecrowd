i = 0
while i <=2:
    for j in range(1,4):
        if i % 1 == 0:
            print(f"I={int(i)} J={int(j+i)}")
        else:
            print(f"I={i} J={j+i}")
    i = round(i+0.2,2)