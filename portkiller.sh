#!/usr/bin/env bash

RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
NC="\033[0m"
VERSION="1.0.0"

print_help() {
echo -e "${BLUE}portkiller - advanced port process manager (v${VERSION})${NC}

Usage:
  portkiller kill <port>           Kill a single port
  portkiller killm <p1,p2,...>     Kill multiple ports
  portkiller list                  List all listening ports
  portkiller self                  List self-assigned ports (>1024)
  portkiller version               Show version
  portkiller help                  Show help
"
}

print_version() {
  echo "portkiller version $VERSION"
}

kill_port() {
PORT=$1

PID=$(lsof -ti tcp:$PORT)

if [ -z "$PID" ]; then
  echo -e "${YELLOW}No process using port $PORT${NC}"
  return
fi

PROC=$(ps -p $PID -o comm=)

echo -e "${RED}Killing port $PORT${NC}"
echo -e "Process: ${BLUE}$PROC${NC} (PID $PID)"

kill -9 $PID && echo -e "${GREEN}Port $PORT freed${NC}"
}

kill_multi_ports() {
IFS=',' read -ra PORTS <<< "$1"

for p in "${PORTS[@]}"; do
  kill_port $p
done
}

list_ports() {
echo -e "${BLUE}Active listening ports:${NC}"
lsof -nP -iTCP -sTCP:LISTEN
}

list_self_ports() {
echo -e "${BLUE}Self-assigned ports (>1024):${NC}"

lsof -nP -iTCP -sTCP:LISTEN | awk '
{
  if ($9 ~ /:[0-9]+$/) {
    split($9,a,":");
    if (a[2] > 1024) print
  }
}'
}

COMMAND=$1

case "$COMMAND" in
  kill)
    kill_port $2
    ;;
  killm)
    kill_multi_ports $2
    ;;
  list)
    list_ports
    ;;
  self)
    list_self_ports
    ;;
  version|-v|--version)
    print_version
    ;;
  help|-h|--help|*)
    print_help
    ;;
esac
