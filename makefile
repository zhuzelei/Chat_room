CC = g++
CFLAGS = -std=c++11
 
all: ClientMain.cpp ServerMain.cpp Server.o Client.o
	$(CC) $(CFLAGS) ServerMain.cpp  Server.o -o chatroom_server
	$(CC) $(CFLAGS) ClientMain.cpp Client.o -o chatroom_client
 
Server.o: Server.cpp Server.h Common.h
	$(CC) $(CFLAGS) -c Server.cpp
 
Client.o: Client.cpp Client.h Common.h
	$(CC) $(CFLAGS) -c Client.cpp
 
clean:
	rm -f *.o chatroom_server chatroom_client