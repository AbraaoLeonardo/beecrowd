sell1 = input().split(" ")
sell2 = input().split(" ")

valuer = float(sell1[1]) * float(sell1[2]) + float(sell2[1]) * float(sell2[2]) 
print('VALOR A PAGAR: R$ {:.2f}'.format(valuer))