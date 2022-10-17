n = int(input("Quantos termos? -> "))

t1 = 1
t2 = 1

t3 = 0

for i in range(1,n+1):
    if i < 3:
        print("1")
    else:
        t3 = t1 + t2
        print("%d"%(t3))
        t1 = t2
        t2 = t3
