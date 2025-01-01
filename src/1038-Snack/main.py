product_price = [4.00,4.50,5.00,2.00,1.50]
product, quantity = map(int, input().split())

price = quantity * product_price[product - 1]
print(f"Total: R$ {price:.2f}")