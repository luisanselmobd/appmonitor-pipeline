#!/bin/bash

echo "Verificando status..."

status="online"

if [ "$status" = "online" ]; then
  echo "App funcionando"
  exit 0
else
  echo "App com erro"
  exit 1
fi