#!/bin/bash
set -e

echo "Update Project Zomboid..."
steamcmd +runscript /root/update_zomboid.txt

DB_FILE="/root/Zomboid/db/servertest.db"

if [ ! -f "$DB_FILE" ]; then
    echo "No admin account, creating a temporary one for setup"
    exec ./start-server.sh -adminpassword admin123
else
    echo "Admin acc detected, launching server"
    exec ./start-server.sh
fi