#!/bin/sh
# 2187 is the cell block number Princess Leia was held in on the Death Star.
echo "Imperial Terminal listening on port 2187..."
# use stdbuf to ensure python output isn't buffered when piped through socat
socat TCP-LISTEN:2187,reuseaddr,fork EXEC:"stdbuf -i0 -o0 -e0 python3 terminal.py"
