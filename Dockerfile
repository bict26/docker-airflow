FROM ubuntu
RUN apt-get update -y && apt-get upgrade -y && apt-get install python3-pip -y
RUN python3 --version
RUN pip3 install pip==20.0.2
RUN pip3 --version
RUN export AIRFLOW_HOME=~/airflow
RUN pip3 install apache-airflow
RUN airflow db init
RUN airflow users create --username admin --password admin --firstname devops --lastname puerco --role Admin --email spiderman@superhero.org
EXPOSE 8080
COPY execute-airflow.sh /root/execute-airflow.sh
RUN chmod +x /root/execute-airflow.sh
ENTRYPOINT ["/root/execute-airflow.sh"]
CMD ["webserver"]
