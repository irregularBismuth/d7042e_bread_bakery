#!/bin/sh

if [ -f serviceregistry.pid ]; then
  kill $(cat serviceregistry.pid)
  rm serviceregistry.pid
  echo "Stopped serviceregistry"
else
  echo "serviceregistry is not running"
fi

if [ -f orchestrator.pid ]; then
  kill $(cat orchestrator.pid)
  rm orchestrator.pid
  echo "Stopped orchestrator"
else
  echo "orchestrator is not running"
fi

if [ -f authorization.pid ]; then
  kill $(cat authorization.pid)
  rm authorization.pid
  echo "Stopped authorization"
else
  echo "authorization is not running"
fi

