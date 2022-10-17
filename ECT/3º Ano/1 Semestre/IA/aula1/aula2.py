import math

#Exercicio 4.1
impar = lambda x: x% 2 == 1

#Exercicio 4.2
positivo = lambda x: x > 0

#Exercicio 4.3
comparar_modulo = lambda x, y: abs(x) < abs(y)

#Exercicio 4.4
cart2pol = lambda x, y: (math.sqrt(x**2 + y**2), math.atan2(y, x))

#Exercicio 4.5
ex5 = lambda f, g, h: lambda: x, y, z: h(f(x, y), g(y, z))

#Exercicio 4.6
def quantificador_universal(lista, f): #all
    if lista == []:
        return True

    if f(lista[0]):
        return quantificador_universal(lista[1:], f)

#Exercicio 4.7
def quantificador_existencial(lista, f): #any
    if lista == []:
        return False
    if f(lista[0]):
        return True

#Exercicio 4.9
def ordem(lista, f):
    if len(lista) == 1:
        return lista[0]

    menor_cauda = ordem(lista[1:], f)

    if f(lista[0], menor_cauda):
        return lista[0]

#Exercicio 4.10
def filtrar_ordem(lista, f):
    pass

#Exercicio 5.2
def ordenar_seleccao(lista, ordem):
    pass