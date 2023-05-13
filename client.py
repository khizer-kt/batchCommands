import socket
clientSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
clientSocket.connect(('127.0.0.1', 1040))
while True:
    sendBuf = input('Client: ')
    clientSocket.send(sendBuf.encode())
    recvBuf = clientSocket.recv(256).decode()
    if not recvBuf:
        break
    print(f'Server: {recvBuf}')
clientSocket.close()
