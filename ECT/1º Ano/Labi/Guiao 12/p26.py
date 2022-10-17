print("Soma e Média:")
count = 0
soma = 0

while True:
	n = float(input("->"))
	if n == 0:
		break
	count += 1
	soma += n
    
m = float(soma/count)
s = float(soma)
     
print(("Soma: %4.2f \n" + "Média: %4.2f \n") %(s,m))

