from cryptography.fernet import Fernet

key = Fernet.generate_key()

def encryptData(data,key):
    fernet = Fernet(key)
    return fernet.encrypt(data.encode())
    
def decryptData(decdata,key):
    fernet = Fernet(key)
    return fernet.decrypt(decdata).decode()
    
password = "Reset@321"

enc = encryptData(password,key)
print("Encrypted data is :",enc)

dec = decryptData(enc,key)
print("Decrypted data : " , dec)
    
