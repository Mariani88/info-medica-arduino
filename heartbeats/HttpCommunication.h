#ifndef HTTPCOMMUNICATION_H_
#define HTTPCOMMUNICATION_H_

#include "WString.h"

class HttpCommunication {
public:
	HttpCommunication(char* ssidName, char* passName);

	void send(int heartbeats[], bool newSamples);

	virtual ~HttpCommunication();

private:
	void detectWifiShield();

	void connectToWifi();

	void printWifiStatus();

	String parseData(int heartbeats[], bool newSamples);

	void doPost(int heartbeats[], bool newSamples);

	void receiveResponse();
};



#endif /* HTTPCOMMUNICATION_H_ */
