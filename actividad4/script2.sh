#! /usr/bin/bash

PIPE_B=/tmp/chat_pipe_b

PIPE_A=/tmp/chat_pipe_a

if [[ ! -p $PIPE_B ]]; then
    mkfifo $PIPE_B
fi

cat $PIPE_A &

while true; do
    read message
    echo "Participante B: $message" > $PIPE_B
done

