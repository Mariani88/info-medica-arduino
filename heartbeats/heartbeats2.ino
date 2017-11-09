#include "Arduino.h"
#include "HttpCommunication.h"

//The setup function is called once at startup of the sketch
void setup()
{
	HttpCommunication communication("WiFi-Arnet-PG23", "7YTGH6DD50");
	int heartbeats[] = {200, 500};
	bool newSamples = true;
	communication.send(heartbeats, newSamples);
}

// The loop function is called in an endless loop
void loop()
{
//Add your repeated code here
}
