#  Create an RSA-2048 private key
openssl genrsa   -out  ../src/server.key 2048


# Creating a Self-Signed Certificate
openssl req -key ../src/server.key -new -x509 -days 365 -out ../src/server.crt

 
 