# DataPipeline
Under this repo, there will be an ELT pattern with AWS Redshift, Terraform to create infrastructure 


### SSH into your guest VM:
    vagrant ssh
    sudo -i
    cd /home/vagrant/data
    docker-compose up --build

### Test Services

    Apache NiFi: http://localhost:8080/nifi/

    Apache Airflow: http://localhost:8081

    Kibana: http://localhost:5601

    Elasticsearch: http://localhost:9200