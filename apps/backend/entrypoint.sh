#!/bin/bash

# Запускаем haveged в фоновом режиме для пополнения пула энтропии
# -w 1024 устанавливает порог предупреждения для энтропии
haveged -w 1024 &

# Выполняем основную команду контейнера (CMD из Dockerfile)
exec "$@"