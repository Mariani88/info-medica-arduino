#include "HttpCommunication.h"
#include "WiFiEsp.h"
#include "string.h"

int status = WL_IDLE_STATUS;
char server[] = "arduino.cc";
char *ssid;
char *pass;
WiFiEspClient client;

HttpCommunication::HttpCommunication(char* ssidName, char* passName) {
	ssid = ssidName;
	pass = passName;
	// initialize serial for debugging
	Serial.begin(115200);
	// initialize serial for ESP module
	Serial1.begin(115200);
	// initialize ESP module
	WiFi.init(&Serial1);
}

void HttpCommunication::send(int heartbeats[], bool newSamples) {
	detectWifiShield();
	connectToWifi();
	doPost(heartbeats, newSamples);
	receiveResponse();
}

void HttpCommunication::detectWifiShield() {
	// check for the presence of the shield
	if (WiFi.status() == WL_NO_SHIELD) {
		Serial.println("WiFi shield not present");
		// don't continue
		while (true)
			;
	}
}

void HttpCommunication::connectToWifi() {
	// attempt to connect to WiFi network
	while (status != WL_CONNECTED) {
		Serial.print("Attempting to connect to WPA SSID: ");
		Serial.println(ssid);
		// Connect to WPA/WPA2 network
		status = WiFi.begin(ssid, pass);
	}

	// you're connected now, so print out the data
	Serial.println("You're connected to the network");

	printWifiStatus();

	Serial.println();
	Serial.println("Starting connection to server...");
}

void HttpCommunication::doPost(int heartbeats[], bool newSamples) {
	// if you get a connection, report back via serial
	if (client.connect("192.168.1.5", 8080)) {
		Serial.println("Connected to server");
		// Make a HTTP request

		//String content = "{\"alarm\": \"warning\"}";

		String content = parseData(heartbeats, newSamples);
		client.print(
				String("POST ") + "/heartbeats" + " HTTP/1.1\r\n" + "Host: "
						+ "192.168.1.5:8080" + "\r\n"
						+
						//"Connection: close\r\n" +
						"Content-Type: application/json\r\n"
						+ "Content-Length: " + content.length() + "\r\n"
						+ "\r\n" + // This is the extra CR+LF pair to signify the start of a body
						content + "\n");
		Serial.println(content);
	}
}

String HttpCommunication::parseData(int heartbeats[], bool newSamples){

	String elements = "[";
	Serial.println(elements);
	for(int index = 0; index < 2; index++){

		if(index == 0){
			elements = elements + heartbeats[index];
			Serial.println(elements);
		}else{
			elements = elements + "," + heartbeats[index];
			Serial.println(elements);
		}
	}

	elements = elements + "]";


	String a = "{";
	String newSamplesField ="\"nh\":";
	String newSamplesValue = String(newSamples);
	String comma = ",";
	String heartbeatsField = "\"hbs\":";
	String b = "}";

	return a + newSamplesField + newSamplesValue + comma + heartbeatsField + elements + b;
	//String data = "{\"nh\":" + "\"" + newSamples + "\"," + "\"hbs\":" + elements + "}";

	//return data;
}

void HttpCommunication::receiveResponse() {

	int waitcount = 0;
	while (!client.available() && waitcount++ < 10000) {
		delay(10);
	}

	// if there are incoming bytes available
	// from the server, read them and print them
	while (client.available()) {
		String line = client.readStringUntil('\r');
		Serial.println(line);
	}

	// if the server's disconnected, stop the client
	if (!client.connected()) {
		Serial.println();
		Serial.println("Disconnecting from server...");
		client.stop();
	}
}

void HttpCommunication::printWifiStatus() {
	// print the SSID of the network you're attached to
	Serial.print("SSID: ");
	Serial.println(WiFi.SSID());

	// print your WiFi shield's IP address
	IPAddress ip = WiFi.localIP();
	Serial.print("IP Address: ");
	Serial.println(ip);

	// print the received signal strength
	long rssi = WiFi.RSSI();
	Serial.print("Signal strength (RSSI):");
	Serial.print(rssi);
	Serial.println(" dBm");
}

HttpCommunication::~HttpCommunication() {
	// TODO Auto-generated destructor stub
}
