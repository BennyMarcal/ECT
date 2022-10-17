a = input("Frase? ->")

count = 0

b = a.split()

for i in b:
	if b.isdigit() == False:
		count += 0
	else:
		count += 1

print("A frase tem %d palavras"%(count))
