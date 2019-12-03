#!/bin/bash -x

ps aux | awk '{print $2 " " $3 " " $4 " " $11}'
