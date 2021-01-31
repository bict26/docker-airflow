# docker-airflow

## Python 3.8.0
## Apache airflow Version 2.0.0

## Pasos:

## 1. Crear imagen de docker con apache airflow
#### docker build -t app .

## 2. Crear contenedor de docker con la imagen previamente creada

####  docker run -it --name airflow -p 3000:8080 app

## 3. Iniciar contenedor 

#### docker start airflow

### Visit localhost:3000
  
