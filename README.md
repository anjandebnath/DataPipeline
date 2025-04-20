# DataPipeline
Under this repo, there will be an ELT pattern with AWS Redshift, Terraform to create infrastructure 

### Docker Enable through bash script
    docker --version
    Docker version 28.1.1, build 4eba377
    docker-compose --version
    Docker Compose version v2.35.1

### SSH into your guest VM:
    vagrant ssh
    sudo -i

    [mount folder from host OS]
    sudo mkdir -p /home/vagrant/data 
    sudo mount -t vboxsf -v -o uid=1000,gid=1000 data /home/vagrant/data

    cd /home/vagrant/data
    docker-compose up --build

### Test Services

    Apache NiFi: https://localhost:8443/nifi/

    Apache Airflow: http://localhost:8081

    Kibana: http://localhost:5601

    Elasticsearch: http://localhost:9200


### Python version
    python3 --version
    Python 3.10.12   
    
### Java version
https://www.theserverside.com/blog/Coffee-Talk-Java-News-Stories-and-Opinions/How-do-I-install-Java-on-Ubuntu

    sudo apt-get update
    sudo apt install default-jdk
    java -version
    update-alternatives --config java
    sudo nano /etc/environment
        JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/java"
    source /etc/environment
    echo $JAVA_HOME

    openjdk version "11.0.26" 2025-01-21

### install Apache Nifi Docker
https://hub.docker.com/r/apache/nifi
  ![alt text](image.png)

  docker logs nifi
  Generated Username [USERNAME]
  Generated Password [PASSWORD]

https://www.youtube.com/watch?v=2hrUseUfCbc

### install Elasticsearch Docker Compose 
https://www.elastic.co/docs/deploy-manage/deploy/self-managed/install-elasticsearch-docker-compose

### install Apache Airflow Docker Compose 
https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html
https://airflow.atwish.org/installation/docker/
https://www.youtube.com/watch?v=AQuYwu2WolQ