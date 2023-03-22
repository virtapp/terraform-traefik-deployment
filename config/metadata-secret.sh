#!/bin/bash

             echo      "----- ............................. -----"
             echo          "---  CREATE-SECRET-METADATA  ---"
             echo      "----- ............................. -----"
             
kubectl create secret generic mysql-secrets --from-literal=openmetadata-mysql-password=openmetadata_password
kubectl create secret generic airflow-secrets --from-literal=openmetadata-airflow-password=admin
sleep 5 &&
kubectl create secret generic airflow-mysql-secrets --from-literal=airflow-mysql-password=airflow_pass
             echo      "----- ............................. -----"
             echo             "---     CREATED     ---"
             echo      "----- ............................. -----"
