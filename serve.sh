#!/usr/bin/env bash
set -e

MODE="${1:-blog}"

case "$MODE" in
    docs)
        PORT="${2:-1111}"
        ;;
    book)
        PORT="${2:-1112}"
        ;;
    blog)
        PORT="${2:-1113}"
        ;;
    *)
        if [[ -d "examples/$MODE" ]]; then
            PORT="${2:-1111}"
        else
            echo "Error: Unknown mode '$MODE'. Available modes: blog, docs, book"
            echo "Usage: ./serve.sh [blog|docs|book] [port]"
            exit 1
        fi
        ;;
esac

echo "Serving $MODE example on http://127.0.0.1:$PORT"
cd "examples/$MODE"
exec zola serve --port "$PORT"
