# export_marts.py
import duckdb
import os

# Path to your DuckDB database
db_path = '/Users/joblethomas/Desktop/Projects/NYCTaxiTripAnalysis/taxi_dbt_project/data/taxi_duckdb.db'

# Folder where CSVs will be saved (same as your NYCTaxiTripAnalysis folder)
output_folder = '/Users/joblethomas/Desktop/Projects/NYCTaxiTripAnalysis/mart_exports'
# Make sure the output folder exists
os.makedirs(output_folder, exist_ok=True)

# Connect to the DuckDB database
con = duckdb.connect(db_path)

# List of your marts
marts = [
    'daily_trip_stats',
    'fare_vs_distance',
    'passenger_stats',
    'revenue_stats',
    'trip_distance_distribution'
]

# Export each mart to CSV
for mart in marts:
    csv_path = os.path.join(output_folder, f'{mart}.csv')
    con.execute(f"""
        COPY {mart} TO '{csv_path}' (HEADER)
    """)
    print(f"Exported {mart} to CSV at {csv_path}")