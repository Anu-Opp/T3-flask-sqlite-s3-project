#!/bin/bash

# Check if SQLite3 is installed
if ! command -v sqlite3 &> /dev/null; then
    echo "SQLite3 is not installed. Please install it first."
    exit 1
fi

# Create or overwrite the database file
echo "Creating database..."
sqlite3 data.db < init_db.sql

# Check if the database was created successfully
if [ $? -eq 0 ]; then
    echo "Database initialized successfully!"
else
    echo "Error creating database."
    exit 1
fi

echo "Setup complete!"