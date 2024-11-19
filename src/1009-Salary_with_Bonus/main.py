name = input()
salary = float(input())
bonus = float(input()) * 0.15

receives_per_month = salary + bonus
print(f'NUMBER = {name}')
print('SALARY = U$ {:.2f}'.format(receives_per_month))