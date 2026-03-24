#!/bin/bash

USER="postgres"
DB="db"
INPUT_FILE="db_dump.sql"

echo "Starting the database restore..."

psql -U $USER -d postgres -c "CREATE DATABASE $DB;"

echo "Database created."

psql -U $USER -d $DB -f $INPUT_FILE

echo "Database restored successfully."