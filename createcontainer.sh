#!/bin/sh
echo "👨 Create Container"

docker build -t iotdashboard .

# wait 5 seconds
sleep 5

echo "🎉 Container created"

echo "👨 Running container"

docker run -d -p 3000:3000 --name iotdashboard iotdashboard

echo "🎉 Container Running" 