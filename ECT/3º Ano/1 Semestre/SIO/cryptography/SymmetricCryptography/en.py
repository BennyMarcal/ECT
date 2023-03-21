import os
from pickle import FALSE, TRUE
import sys
from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives import padding

def main():
	if(len(sys.argv)<4):
		print("Erro burro: python3 en.py input output algorithm (mode)")
		exit(1)
		
	file_in=sys.argv[1]
	file_out=sys.argv[2]
	cipher=sys.argv[3]
	if( len(sys.argv)>4 ):
		mode=sys.argv[4]
	else:
		mode="CBC"

	key=os.urandom(32)
	iv=os.urandom(16)
	

	#read
	f=open(file_in,"rb")
	data=f.read()
	data=encriptar(data,cipher,mode,key,iv)
	

	#Write
	f=open(file_out,"wb")
	f.write(iv)
	f.write(data)
	f=open("pass.txt","wb")
	f.write(key)


def encriptar(data, cipher,mode,key,iv):
	need = False
	if( cipher=="AES-128"):
		if(mode == "CBC"):
			cipher = Cipher(algorithms.AES(key), modes.CBC(iv))
			need = True
		elif(mode == "ECB"):
			cipher = Cipher(algorithms.AES(key), modes.ECB())
			need = True
		elif(mode == "OFB"):
			cipher = Cipher(algorithms.AES(key), modes.OFB(iv))
		elif(mode == "CFB"):
			cipher = Cipher(algorithms.AES(key), modes.CFB(iv))

		encryptor = cipher.encryptor()
		if(need):
			data=paddar(data) 
			print("Entrei")
		data=encryptor.update(data)+encryptor.finalize()

	elif( cipher=="ChaCha20"):
		algorithm = algorithms.ChaCha20(key, iv)
		cipher = Cipher(algorithm, mode=None)
		encryptor = cipher.encryptor()
		data=encryptor.update(data)
	
	return data

def paddar(data):
	padder = padding.PKCS7(128).padder()
	data=padder.update(data) + padder.finalize()
	return data

if __name__ == "__main__":
	main()