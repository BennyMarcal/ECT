import random

valor = random.randint(1,100)
count = 0
guess = 0
print('Tenta adivinhar um níumero de 1 a 100')

while guess !=valor:
	count+= 1
	guess = input("Advinha nº %d: "%(count))
	
	if guess.isnumeric():
		guess = int(guess)
	else:
		print('Mete só números, letras não vale!')
		continue
	if guess > valor:
		print("Naooooo zé, o número é mais pequenote")
	elif guess < valor:
		print('Número tá muita baixo meu, adivinha mais alto!')
	elif guess == valor:
		print('Boa seu mongoloide, adivinhaste em %d tentativas!'%(count))
