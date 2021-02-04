# docker-airflow

## Python 3.8.0
## Apache airflow Version 2.0.0

## Pasos:

## 1. Crear imagen de docker con apache airflow
#### docker build -t img-airlfow .

## 1.1 Tagger imagen
#### docker tag img-airflow:latest img-airflow:staging

## 2. Ejecutar docker compose 

####  docker-compose -f docker-compose-LocalExecutor.yml up -d

### Visitar: localhost:3000
  
