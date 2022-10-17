def readNota(tipo):
    nota = 0
    while True:
        nota = float(input(tipo+"->"))

        if nota <= 20 and nota >= 0:
            break
        print("Nota Inválida")
    
    return nota

def aprovado(nota):
    if nota > 9.5:
        return True
    else:
        return False

print("Cálculo da Nota a Lab-I")

MT1 = readNota("MT1")
MT2 = readNota("MT2")
AP1 = readNota("AP1")
AP2 = readNota("AP2")
P1 = readNota("P1")
P2 = readNota("P2")

NF = 0.2*MT1 + 0.2*MT2 + 0.1*AP1 + 0.1*AP2 + 0.15*P1 + 0.25*P2

if aprovado(NF):
	print("Aluno aprovado com %4.2f"%(NF))
else:
        print("Aluno reprovado com %4.2f"%(NF))
