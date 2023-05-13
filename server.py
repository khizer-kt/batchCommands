import socket #:) 
serverSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
serverSocket.bind(('127.0.0.1', 1040))
serverSocket.listen()

print('Waiting for connection')
print(serverSocket.getsockname())
clientSocket, clientAddr = serverSocket.accept()
print(f'Client {clientAddr} connected!')

while True:
    recvBuf = clientSocket.recv(256).decode()
    if not recvBuf:
        break
    print(f'Client: {recvBuf}')
    sendBuf = input('Server: ')
    clientSocket.send(sendBuf.encode())

clientSocket.close()
serverSocket.close()
