#!/bin/bash

echo "Running dbt models..."
cd taxi_dbt_project
dbt run

echo "Exporting marts to CSV..."
cd ..
/opt/anaconda3/bin/python export_marts.py

echo "Pipeline complete!"