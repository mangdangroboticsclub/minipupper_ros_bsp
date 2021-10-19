from socket import*
HOST = "localhost"
PORT = 11113
BUFSIZE = 4096
ADDR = (HOST,PORT)
udpClient = socket(AF_INET, SOCK_DGRAM)

data = input('>')
udpClient.sendto(data.encode(), ADDR)
udpClient.close()


