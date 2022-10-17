s = int(input("Fatorial->"))

f = 1

i = 1

while i < s+1:
    f = i*f

    i+=1

print("Fatorial de %d é : %d"%(s,f))
