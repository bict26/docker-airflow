#!/bin/bash

AIRFLOW__CORE__SQL_ALCHEMY_CONN="postgresql+psycopg2://airflow:airflow@postgres:5432/airflow"

export AIRFLOW__CORE__SQL_ALCHEMY_CONN

case "$1" in
  webserver)	  	
  airflow db init
  airflow users create --username admin --password admin --firstname devops --lastname puerco --role Admin --email spiderman@superhero.org
  airflow scheduler &	  
    exec airflow webserver
    ;;
  worker|scheduler)
    # Give the webserver time to run initdb.
    sleep 10
    exec airflow "$@"
    ;;
  flower)
    sleep 10
    exec airflow "$@"
    ;;
  version)
    exec airflow "$@"
    ;;
  *)
    # The command is something like bash, not an airflow subcommand. Just run it in the right environment.
    exec "$@"
    ;;
esac
