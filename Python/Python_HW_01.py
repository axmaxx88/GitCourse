# 1) Создать переменную типа String

string_var = 'Max'

# 2) Создать переменную типа Integer

integer_var = 33

# 3) Создать переменную типа Float

float_var = 33.5

# 4) Создать переменную типа Bytes

bytes_var = b'12345'

# 5) Создать переменную типа List

list_var = ['123max', '456', 1999, ['789', 'max']]

# 6) Создать переменную типа Tuple

tuple_var = (199, '277')

# 7) Создать переменную типа Set

set_var = set('maxim')


# 8) Создать переменную типа Frozen set

frozenset_var = frozenset('aksenov')

# 9) Создать переменную типа Dict

dict_var = {'key_1': 10,
            'key_2': 20,
            'key_3': {'name': 'Maxim',
                      'age': 33}}

# 10) Вывести в консоль все вышеперечисленные переменные с добавлением типа данных

all_var = [string_var, integer_var, float_var, bytes_var, list_var, tuple_var, set_var, frozenset_var, dict_var]

for i in all_var:
    print((i), type(i))

# 11) Создать две переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль

string_1 = 'Maksim'
string_2 = 'Aksenov'
allStrings = string_1 + ' ' + string_2
print(allStrings)

# 12) Вывести в одну строку переменные типа String и Integer используя ","
# string_var = 'Max'
# integer_var = 33

print(string_var, integer_var)

# 13) Вывести в одну строку переменные типа String и Integer используя "+"
# string_var = 'Max'
# integer_var = 33

print(string_var + str(integer_var))
