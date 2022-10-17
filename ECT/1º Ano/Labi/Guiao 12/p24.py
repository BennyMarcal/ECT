def primo(n):
    cond = True
    for i in range(1,n):
        if i > 2:
            if(n%i==0):
                cond=False
                break
    
    return cond

while True:
	c = int(input("Verifique se o número é primo: "))
	while c == 1:
		c = int(input("False\nVerifique se o número é primo: "))
		if c!= 1:
			break
	if c == 0:
		break
	print(primo(c))
    
