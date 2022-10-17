def p19(a,b):
    c = 0

    for i in range(a,b):
        if i%3==0:
            c +=1
    
    return c

print("insira 2 valores")
x = int(input("Primeiro valor: "))
y = int(input("Segundo valor: "))

print("entre %d e %d, existem %d múltiplos de 3"%(x,y,p19(x,y)))
