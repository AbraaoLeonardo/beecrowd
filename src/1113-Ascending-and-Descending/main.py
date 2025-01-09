while True:
    x,y = map(int, input().split())
    message = 'Crescente'

    if x == y:
        break

    if x > y:
        message = 'Decrescente'
    
    print(message)