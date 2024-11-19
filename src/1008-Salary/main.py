number = int(input())
worked_hour = int(input())
receives_per_worked_hour = float(input())

receives_per_month = worked_hour * receives_per_worked_hour
print(f'NUMBER = {number}')
print('SALARY = U$ {:.2f}'.format(receives_per_month))