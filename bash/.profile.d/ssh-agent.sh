#!/bin/bash

# Ensure there is an ssh-agent
if [ -f "$HOME/.ssh/agent.env" ] ; then
    . "$HOME/.ssh/agent.env" > /dev/null
    if ! kill -0 "$SSH_AGENT_PID" > /dev/null 2>&1; then
        echo "Stale agent file found. Spawning a new agent. "
        eval `ssh-agent | tee ~/.ssh/agent.env`
        ssh-add > /dev/null 2>&1
    fi
else
    echo "Starting ssh-agent"
    eval `ssh-agent | tee "$HOME/.ssh/agent.env"`
    ssh-add > /dev/null 2>&1
fi
