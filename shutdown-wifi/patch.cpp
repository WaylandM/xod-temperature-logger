#include <ESP8266WiFi.h>

node {

    void evaluate(Context ctx) {
        if (isInputDirty<input_OFF>(ctx)) {
            WiFi.disconnect(); 
            WiFi.mode(WIFI_OFF);
            WiFi.forceSleepBegin();
        }
    }
}
