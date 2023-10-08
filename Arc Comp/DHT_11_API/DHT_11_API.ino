#include "DHT.h"
#define dht_type DHT11
int dht_pin = A2;
DHT dht_1 = DHT (dht_pin, dht_type);
const int LM35= A0;
float temperatura;

void setup()
{
  Serial.begin (9600);
  dht_1.begin();
}

void loop()
{
  float umidade = dht_1.readHumidity();
  float temperatura1 = dht_1.readTemperature();
  float temperatura2 = (float(analogRead(LM35))*5/(1023))/0.01;
  if (isnan(temperatura1) or isnan(temperatura2) or isnan(umidade)) 
  {
    Serial.println("Erro ao ler o DHT");
  }
  else
  {
    Serial.print(temperatura1);
    Serial.print(temperatura2);
    Serial.println(umidade);
  }
  delay(2000);
}