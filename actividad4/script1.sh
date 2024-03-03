#! /usr/bin/bash

PIPE_A=/tmp/chat_pipe_a

PIPE_B=/tmp/chat_pipe_b

if [[ ! -p $PIPE_A ]]; then
    mkfifo $PIPE_A
fi

cat $PIPE_B &

while true; do
    read message
    echo "Participante A: $message" > $PIPE_A
done

