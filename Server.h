
#ifndef CHATROOM_SERVER_H
#define CHATROOM_SERVER_H

#include <string>
#include "Common.h"
using namespace std;

class Server
{
public:
	Server();
	void Init();
	void Close();
	void Start();

private:
	int SendBroadcastMessage(int clientfd);
	struct sockaddr_in serverAddr;
	int listener;
	int epfd;
	list<int> clients_list;
};
#endif