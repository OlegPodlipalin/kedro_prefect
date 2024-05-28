#!/bin/bash

# Log the start of the script
echo "Starting the container..." >> /opt/prefect/startup.log

# Log environment variables
echo "Environment variables:" >> /opt/prefect/startup.log
env >> /opt/prefect/startup.log

# Log the Prefect version
prefect version >> /opt/prefect/startup.log


# Log the end of the script
echo "Container startup script finished." >> /opt/prefect/startup.log

# Keep the container running
tail -f /dev/null
