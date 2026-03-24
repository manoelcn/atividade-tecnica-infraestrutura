#!/bin/bash

USER="postgres"
DB="db"
OUTPUT_FILE="db_dump.sql"

echo "Starting the database dump..."

pg_dump -U $USER -d $DB -f $OUTPUT_FILE

echo "Dump completed and file saved to $OUTPUT_FILE."