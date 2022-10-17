s = input("Frase? ->")

c = 0

for i in s:
    if i.isdigit():
        c +=1;

print("A frase tem %d algarismos"%(c))
